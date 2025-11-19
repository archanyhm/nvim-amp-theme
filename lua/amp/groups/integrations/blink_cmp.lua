local M = {}

function M.get(colors, config)
    return {
        BlinkCmpMenu = { fg = colors.fg, bg = colors.black },
        BlinkCmpMenuBorder = { fg = colors.split, bg = colors.black },
        BlinkCmpSelection = { bg = colors.selection_bg },
        BlinkCmpDoc = { bg = colors.black },
        BlinkCmpDocBorder = { fg = colors.split, bg = colors.black },
        
        BlinkCmpLabel = { fg = colors.fg },
        BlinkCmpLabelDeprecated = { fg = colors.bright_black, strikethrough = true },
        BlinkCmpLabelMatch = { fg = colors.blue, bold = true },
        
        BlinkCmpKindField = { fg = colors.red },
        BlinkCmpKindProperty = { fg = colors.red },
        BlinkCmpKindEvent = { fg = colors.red },
        
        BlinkCmpKindText = { fg = colors.green },
        BlinkCmpKindEnum = { fg = colors.green },
        BlinkCmpKindKeyword = { fg = colors.green },
        
        BlinkCmpKindConstant = { fg = colors.yellow },
        BlinkCmpKindConstructor = { fg = colors.yellow },
        BlinkCmpKindReference = { fg = colors.yellow },
        
        BlinkCmpKindFunction = { fg = colors.blue },
        BlinkCmpKindStruct = { fg = colors.blue },
        BlinkCmpKindClass = { fg = colors.blue },
        BlinkCmpKindModule = { fg = colors.blue },
        BlinkCmpKindOperator = { fg = colors.blue },
        
        BlinkCmpKindVariable = { fg = colors.fg },
        BlinkCmpKindFile = { fg = colors.fg },
        
        BlinkCmpKindUnit = { fg = colors.magenta },
        BlinkCmpKindSnippet = { fg = colors.magenta },
        BlinkCmpKindFolder = { fg = colors.magenta },
        
        BlinkCmpKindMethod = { fg = colors.cyan },
        BlinkCmpKindValue = { fg = colors.cyan },
        BlinkCmpKindEnumMember = { fg = colors.cyan },
        
        BlinkCmpKindInterface = { fg = colors.bright_cyan },
        BlinkCmpKindColor = { fg = colors.bright_cyan },
        BlinkCmpKindTypeParameter = { fg = colors.bright_cyan },
    }
end

return M
