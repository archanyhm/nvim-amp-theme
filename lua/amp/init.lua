local M = {}
local config_module = require("amp.config")

function M.setup(options)
    config_module.setup(options)
end

function M.load()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "amp"

  local colors = require("amp.palette")
  local config = config_module.get_options()
  local groups = require("amp.lib.mapper").apply(colors, config)

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
