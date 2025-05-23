local M = {}

---@param theme cuddlefish.types.theme
---@param _ cuddlefish.types.config
M.get = function(theme, _)
  return {
    RainbowDelimiterRed = { fg = theme.red },
    RainbowDelimiterYellow = { fg = theme.yellow },
    RainbowDelimiterBlue = { fg = theme.blue },
    RainbowDelimiterOrange = { fg = theme.orange },
    RainbowDelimiterGreen = { fg = theme.green },
    RainbowDelimiterViolet = { fg = theme.pink },
    RainbowDelimiterCyan = { fg = theme.aqua },
  }
end

return M
