local M = {}

function M.get(c)
  return {
    NoiceCmdlinePopup             = { fg = c.base },
    NoiceCmdlinePrompt            = { fg = c.base },
    NoiceCmdline                  = { fg = c.base },
    NoiceCmdlineIcon              = { fg = c.base },
    NoiceCmdlinePopupTitle        = { fg = c.base },
    NoiceCmdlinePopupBorder       = { fg = c.base },
    NoiceCmdlineIconSearch        = { fg = c.base },
    NoiceCmdlinePopupBorderSearch = { fg = c.base },
  }
end

return M
