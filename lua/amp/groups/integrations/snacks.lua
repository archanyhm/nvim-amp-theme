local M = {}

function M.get(colors, config)
    return {
        -- Dashboard
        SnacksDashboardHeader = { fg = colors.blue },
        SnacksDashboardFooter = { fg = colors.green },
        SnacksDashboardKey = { fg = colors.red },
        SnacksDashboardDesc = { fg = colors.fg },
        SnacksDashboardIcon = { fg = colors.cyan },
        SnacksDashboardSpecial = { fg = colors.yellow },
        
        -- Indent
        SnacksIndent = { fg = colors.bright_black },
        SnacksIndentScope = { fg = colors.blue },
        
        -- Notifier
        SnacksNotifierBorderError = { fg = colors.red },
        SnacksNotifierBorderWarn = { fg = colors.yellow },
        SnacksNotifierBorderInfo = { fg = colors.blue },
        SnacksNotifierBorderDebug = { fg = colors.bright_black },
        SnacksNotifierBorderTrace = { fg = colors.magenta },
        
        SnacksNotifierIconError = { fg = colors.red },
        SnacksNotifierIconWarn = { fg = colors.yellow },
        SnacksNotifierIconInfo = { fg = colors.blue },
        SnacksNotifierIconDebug = { fg = colors.bright_black },
        SnacksNotifierIconTrace = { fg = colors.magenta },
        
        SnacksNotifierTitleError = { fg = colors.red },
        SnacksNotifierTitleWarn = { fg = colors.yellow },
        SnacksNotifierTitleInfo = { fg = colors.blue },
        SnacksNotifierTitleDebug = { fg = colors.bright_black },
        SnacksNotifierTitleTrace = { fg = colors.magenta },

        -- Picker
        SnacksPickerBorder = { fg = colors.split },
        SnacksPickerBox = { bg = colors.black },
        SnacksPickerCursorLine = { bg = colors.selection_bg },
        SnacksPickerDir = { fg = colors.bright_black },
        SnacksPickerFile = { fg = colors.fg },
        SnacksPickerMatch = { fg = colors.blue, bold = true },
        SnacksPickerSelected = { fg = colors.yellow },
        
        -- Input
        SnacksInputTitle = { fg = colors.blue },
        SnacksInputBorder = { fg = colors.split },
    }
end

return M
