local M = {}

M.options = nil

local defaults = {
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
    },
}

function M.setup(options)
    if not M.options then
        M.options = vim.tbl_deep_extend("force", vim.deepcopy(defaults), options or {})
    else
        M.options = vim.tbl_deep_extend("force", M.options, options or {})
    end
end

function M.get_options()
    if not M.options then
        M.options = vim.deepcopy(defaults)
    end
    return M.options
end

return M
