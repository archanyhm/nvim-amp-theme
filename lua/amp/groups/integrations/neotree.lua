local M = {}

function M.get(colors, config)
    local divider = "#3A3A3A"
    return {
        NeoTreeNormal = { bg = config.transparent_background and colors.none or colors.black },
        NeoTreeNormalNC = { bg = config.transparent_background and colors.none or colors.black },
        NeoTreeWinSeparator = { fg = divider, bg = config.transparent_background and colors.none or colors.black },
    }
end

return M
