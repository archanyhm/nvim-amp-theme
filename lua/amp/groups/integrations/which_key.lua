local M = {}

function M.get(colors, config)
    return {
        WhichKey = { fg = colors.cyan },
        WhichKeyGroup = { fg = colors.blue },
        WhichKeyDesc = { fg = colors.fg },
        WhichKeySeperator = { fg = colors.bright_black },
        WhichKeyFloat = { bg = colors.black },
    }
end

return M
