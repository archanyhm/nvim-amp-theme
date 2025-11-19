local M = {}

M.options = {
    transparent_background = false,
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        telescope = true,
        treesitter = true,
        notify = true,
        which_key = true,
        dashboard = true,
        snacks = true,
        blink_cmp = true,
        -- native_lsp is always enabled
    },
}

function M.setup(options)
    M.options = vim.tbl_deep_extend("force", M.options, options or {})
end

return M
