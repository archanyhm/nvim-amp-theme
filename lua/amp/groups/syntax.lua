local M = {}

function M.get(colors, config)
    local styles = config.styles or {}
    return {
        Comment = { fg = colors.bright_black, style = styles.comments },
        Constant = { fg = colors.bright_magenta, style = styles.variables },
        String = { fg = colors.green, style = styles.strings },
        Character = { fg = colors.green, style = styles.strings },
        Number = { fg = colors.bright_magenta, style = styles.numbers },
        Boolean = { fg = colors.bright_magenta, style = styles.booleans },
        Float = { fg = colors.bright_magenta, style = styles.numbers },
        
        Identifier = { fg = colors.red, style = styles.variables },
        Function = { fg = colors.blue, style = styles.functions },
        
        Statement = { fg = colors.magenta, style = styles.keywords },
        Conditional = { fg = colors.magenta, style = styles.conditionals },
        Repeat = { fg = colors.magenta, style = styles.loops },
        Label = { fg = colors.magenta, style = styles.keywords },
        Operator = { fg = colors.bright_blue, style = styles.operators },
        Keyword = { fg = colors.magenta, style = styles.keywords },
        Exception = { fg = colors.red, style = styles.keywords },
        
        PreProc = { fg = colors.cyan, style = styles.keywords },
        Include = { fg = colors.cyan },
        Define = { fg = colors.cyan },
        Macro = { fg = colors.cyan },
        PreCondit = { fg = colors.cyan },
        
        Type = { fg = colors.yellow, style = styles.types },
        StorageClass = { fg = colors.yellow, style = styles.keywords },
        Structure = { fg = colors.yellow },
        Typedef = { fg = colors.yellow },
        
        Special = { fg = colors.bright_cyan },
        SpecialChar = { fg = colors.bright_cyan },
        Tag = { fg = colors.bright_cyan },
        Delimiter = { fg = colors.fg },
        SpecialComment = { fg = colors.bright_cyan },
        Debug = { fg = colors.bright_cyan },
    }
end

return M
