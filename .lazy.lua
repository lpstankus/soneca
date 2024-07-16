-- Code snippet directly ported from Cyberdream's implementation of TokyoNight's "Dev Mode", all
-- credits to Scott McKendry and folke for the original implementations <3

-- This file has the following license, as per the original implementation:

-- MIT License

-- Copyright (c) 2023 Scott McKendry

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
-- copies of the Software, and to permit persons to whom the Software is
-- furnished to do so, subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
-- IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
-- FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
-- AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
-- LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
-- OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
-- SOFTWARE.

-- Ported from TokyoNight's "Dev Mode" feature
-- Shows colors and highlights while editing the theme, hot-reloads on save.

-- All credits to the original author: @folke 💚
-- https://github.com/folke/tokyonight.nvim
local colors
local cache = {}
local hl_groups = {}

local function resolve(groups)
  for _, hl in pairs(groups) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do
        hl[k] = v
      end
      hl.style = nil
    end
  end
  return groups
end

local function get_hl_group(hl)
  local group = "SonecaDev" .. vim.inspect(hl):gsub("%W+", "_")
  if not hl_groups[group] then
    hl = type(hl) == "string" and { link = hl } or hl
    hl = vim.deepcopy(hl, true)
    resolve({ foo = hl })
    hl.fg = hl.fg or colors.fg
    vim.api.nvim_set_hl(0, group, hl)
    hl_groups[group] = true
  end
  return group
end

local function get_group(buf)
  local fname = vim.api.nvim_buf_get_name(buf or 0)
  fname = vim.fs.normalize(fname)
  if not fname:find("lua/soneca/highlights/") then return end
  return vim.fn.fnamemodify(fname, ":t:r")
end

local function load(group)
  if cache[group] then return end
  cache[group] = {}
  colors = require("soneca.colors").get()
  local highlights = require("soneca.highlights." .. group).get(colors)
  for k, v in pairs(highlights) do
    cache[group][k] = get_hl_group(v)
  end
end

vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("soneca_dev", { clear = true }),
  pattern = "*/lua/soneca/**.lua",
  callback = vim.schedule_wrap(function(ev)
    for k in pairs(package.loaded) do
      if k:find("^soneca") then
        package.loaded[k] = nil
      end
    end
    require("soneca").load()
    vim.cmd.colorscheme(vim.g.colors_name)
    hl_groups = {}
    local hi = require("mini.hipatterns")
    local group = get_group(ev.buf)
    if group then cache[group] = nil end
    for _, buf in ipairs(hi.get_enabled_buffers()) do
      hi.update(buf)
    end
  end),
})

return {
  {
    "echasnovski/mini.hipatterns",
    opts = function(_, opts)
      opts.highlighters = opts.highlighters or {}
      opts.highlighters.soneca = {
        pattern = function(buf)
          local group = get_group(buf)
          if not group or group == "init" then return end
          load(group)
          return group and '^%s*%[?"?()[%w%.@]+()"?%]?%s*='
        end,
        group = function(buf, match, _)
          local name = get_group(buf)
          if name == "kinds" then match = "LspKind" .. match end
          return name and cache[name][match]
        end,
        extmark_opts = { priority = 2000 },
      }

      opts.highlighters.soneca_colors = {
        pattern = { "%f[%w]()t%.[%w_%.]+()%f[%W]" },
        group = function(_, match)
          local parts = vim.split(match, ".", { plain = true })
          local t = _G --[[@as table]]
          if parts[1]:sub(1, 1) == "t" then
            table.remove(parts, 1)
            colors = require("soneca.colors").get()
            t = colors
          end
          local color = vim.tbl_get(t, unpack(parts))
          return type(color) == "string" and get_hl_group({ fg = color })
        end,
        extmark_opts = function(_, _, data)
          return {
            virt_text = { { "⬤ ", data.hl_group } },
            virt_text_pos = "inline",
            priority = 2000,
          }
        end,
      }
    end,
  },
}
