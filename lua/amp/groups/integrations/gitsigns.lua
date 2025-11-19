local M = {}

function M.get(colors, config)
    return {
        GitSignsAdd = { fg = colors.green },
        GitSignsChange = { fg = colors.blue },
        GitSignsDelete = { fg = colors.red },
    }
end

return M
