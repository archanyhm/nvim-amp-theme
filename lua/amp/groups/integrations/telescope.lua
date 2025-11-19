local M = {}

function M.get(colors, config)
    return {
        TelescopeBorder = { fg = colors.split, bg = colors.black },
        TelescopeNormal = { bg = colors.black },
        TelescopePromptBorder = { fg = colors.blue, bg = colors.black },
        TelescopePromptNormal = { bg = colors.black },
        TelescopePromptTitle = { fg = colors.bg, bg = colors.blue, bold = true },
        TelescopePreviewTitle = { fg = colors.bg, bg = colors.green, bold = true },
        TelescopeResultsTitle = { fg = colors.bg, bg = colors.split, bold = true },
        TelescopeSelection = { bg = colors.selection_bg, fg = colors.fg },
        TelescopeMatching = { fg = colors.blue, bold = true },
    }
end

return M
