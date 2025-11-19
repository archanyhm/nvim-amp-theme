local M = {}

function M.get(colors, config)
    return {
        DashboardHeader = { fg = colors.blue },
        DashboardFooter = { fg = colors.green },
        DashboardKey = { fg = colors.red },
        DashboardDesc = { fg = colors.fg },
        DashboardIcon = { fg = colors.cyan },
        DashboardShortCut = { fg = colors.yellow },
    }
end

return M
