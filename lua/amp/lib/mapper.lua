local M = {}

local function merge_table(t1, t2)
    for k, v in pairs(t2) do
        t1[k] = v
    end
    return t1
end

local function apply_styles(highlight, styles)
    if not styles or #styles == 0 then
        return highlight
    end
    for _, style in ipairs(styles) do
        if style == "italic" then
            highlight.italic = true
        elseif style == "bold" then
            highlight.bold = true
        elseif style == "underline" then
            highlight.underline = true
        elseif style == "strikethrough" then
            highlight.strikethrough = true
        elseif style == "reverse" then
            highlight.reverse = true
        end
    end
    return highlight
end

function M.apply(colors, config)
    local groups = {}

    -- Editor and Syntax
    merge_table(groups, require("amp.groups.editor").get(colors, config))
    merge_table(groups, require("amp.groups.syntax").get(colors, config))
    
    -- Integrations
    local integrations = config.integrations or {}
    
    -- Always load native_lsp if not explicitly disabled (or just always)
    merge_table(groups, require("amp.groups.integrations.native_lsp").get(colors, config))
    
    for name, enabled in pairs(integrations) do
        if enabled then
            local ok, module = pcall(require, "amp.groups.integrations." .. name)
            if ok then
                merge_table(groups, module.get(colors, config))
            else
                -- Warn or ignore missing integration modules?
                -- vim.notify("Amp: Integration module not found for " .. name, vim.log.levels.WARN)
            end
        end
    end

    -- Apply style arrays as individual highlight attributes
    for _, highlight in pairs(groups) do
        if highlight.style then
            apply_styles(highlight, highlight.style)
            highlight.style = nil
        end
    end

    return groups
end

return M
