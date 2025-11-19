local M = {}

function M.get(colors, config)
    return {
        ["@comment"] = { link = "Comment" },
        ["@string"] = { link = "String" },
        ["@variable"] = { fg = colors.fg },
        ["@variable.builtin"] = { fg = colors.red },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Function" },
        ["@function.call"] = { link = "Function" },
        ["@constructor"] = { fg = colors.yellow },
        ["@operator"] = { link = "Operator" },
        ["@keyword"] = { link = "Keyword" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@punctuation.bracket"] = { fg = colors.fg },
        ["@punctuation.delimiter"] = { fg = colors.fg },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { link = "Type" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Constant" },
        ["@tag"] = { fg = colors.red },
        ["@tag.attribute"] = { fg = colors.yellow },
        ["@tag.delimiter"] = { fg = colors.bright_black },
    }
end

return M
