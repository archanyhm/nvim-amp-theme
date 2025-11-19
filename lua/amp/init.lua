local M = {}
local config_module = require("amp.config")

function M.setup(options)
    config_module.setup(options)
end

function M.load()
  M.load_variant("default")
end

function M.load_variant(variant)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  local palette_file = variant == "default" and "amp.palette" or ("amp.palette-" .. variant)
  vim.g.colors_name = variant == "default" and "amp" or ("amp-" .. variant)

  local colors = require(palette_file)
  local config = config_module.get_options()
  local groups = require("amp.lib.mapper").apply(colors, config)

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
