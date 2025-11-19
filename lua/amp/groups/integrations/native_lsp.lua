local M = {}

function M.get(colors, config)
    return {
        DiagnosticError = { fg = colors.red },
        DiagnosticWarn = { fg = colors.yellow },
        DiagnosticInfo = { fg = colors.blue },
        DiagnosticHint = { fg = colors.cyan },
        DiagnosticUnderlineError = { sp = colors.red, underline = true },
        DiagnosticUnderlineWarn = { sp = colors.yellow, underline = true },
        DiagnosticUnderlineInfo = { sp = colors.blue, underline = true },
        DiagnosticUnderlineHint = { sp = colors.cyan, underline = true },
    }
end

return M
