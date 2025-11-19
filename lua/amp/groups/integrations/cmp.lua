local M = {}

function M.get(colors, config)
    return {
        CmpItemAbbrDeprecated = { fg = colors.bright_black, strikethrough = true },
        CmpItemAbbrMatch = { fg = colors.blue, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = colors.blue, bold = true },
        CmpItemMenu = { fg = colors.bright_black },
        
        CmpItemKindField = { fg = colors.red },
        CmpItemKindProperty = { fg = colors.red },
        CmpItemKindEvent = { fg = colors.red },
        
        CmpItemKindText = { fg = colors.green },
        CmpItemKindEnum = { fg = colors.green },
        CmpItemKindKeyword = { fg = colors.green },
        
        CmpItemKindConstant = { fg = colors.yellow },
        CmpItemKindConstructor = { fg = colors.yellow },
        CmpItemKindReference = { fg = colors.yellow },
        
        CmpItemKindFunction = { fg = colors.blue },
        CmpItemKindStruct = { fg = colors.blue },
        CmpItemKindClass = { fg = colors.blue },
        CmpItemKindModule = { fg = colors.blue },
        CmpItemKindOperator = { fg = colors.blue },
        
        CmpItemKindVariable = { fg = colors.fg },
        CmpItemKindFile = { fg = colors.fg },
        
        CmpItemKindUnit = { fg = colors.magenta },
        CmpItemKindSnippet = { fg = colors.magenta },
        CmpItemKindFolder = { fg = colors.magenta },
        
        CmpItemKindMethod = { fg = colors.cyan },
        CmpItemKindValue = { fg = colors.cyan },
        CmpItemKindEnumMember = { fg = colors.cyan },
        
        CmpItemKindInterface = { fg = colors.bright_cyan },
        CmpItemKindColor = { fg = colors.bright_cyan },
        CmpItemKindTypeParameter = { fg = colors.bright_cyan },
    }
end

return M
