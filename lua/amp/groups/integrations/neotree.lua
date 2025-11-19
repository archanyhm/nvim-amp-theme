local M = {}

function M.get(colors, config)
    return {
        NeoTreeNormal = { bg = config.transparent_background and colors.none or colors.black },
        NeoTreeNormalNC = { bg = config.transparent_background and colors.none or colors.black },
        NeoTreeWinSeparator = { fg = colors.split, bg = config.transparent_background and colors.none or colors.black },
    }
end

return M
