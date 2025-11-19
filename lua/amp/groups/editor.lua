local M = {}

function M.get(colors, config)
    return {
        Normal = { fg = colors.fg, bg = config.transparent_background and colors.none or colors.bg },
        NormalFloat = { fg = colors.fg, bg = colors.black },
        FloatBorder = { fg = colors.split, bg = colors.black },
        Cursor = { fg = colors.bg, bg = colors.cursor },
        CursorLine = { bg = colors.black },
        CursorColumn = { bg = colors.black },
        LineNr = { fg = colors.bright_black },
        CursorLineNr = { fg = colors.yellow, bold = true },
        Visual = { bg = colors.selection_bg },
        VisualNOS = { bg = colors.selection_bg },
        VertSplit = { fg = colors.split, bg = config.transparent_background and colors.none or colors.bg },
        WinSeparator = { fg = colors.split, bg = config.transparent_background and colors.none or colors.bg },
        StatusLine = { fg = colors.fg, bg = colors.black },
        StatusLineNC = { fg = colors.bright_black, bg = colors.black },
        Pmenu = { fg = colors.fg, bg = colors.black },
        PmenuSel = { fg = colors.bg, bg = colors.blue },
        PmenuSbar = { bg = colors.black },
        PmenuThumb = { bg = colors.bright_black },
        MatchParen = { bg = colors.split, fg = colors.white, bold = true },
        Search = { fg = colors.bg, bg = colors.yellow },
        IncSearch = { fg = colors.bg, bg = colors.bright_red },
        
        Underlined = { underline = true },
        Ignore = { fg = colors.bright_black },
        Error = { fg = colors.red, bold = true },
        Todo = { fg = colors.black, bg = colors.yellow, bold = true },

        -- Diff
        DiffAdd = { fg = colors.green, bg = colors.none },
        DiffChange = { fg = colors.blue, bg = colors.none },
        DiffDelete = { fg = colors.red, bg = colors.none },
        DiffText = { fg = colors.blue, bg = colors.none, reverse = true },
    }
end

return M
