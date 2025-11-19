# nvim-amp-theme

A minimal, high-contrast dark theme for Neovim.

Design based on the Amp Code theme provided by [Tim Culverhouse (rockorager)](https://github.com/rockorager).
Originally based on the Sourcegraph Amp Code colorscheme.

## Installation

### Lazy.nvim

```lua
{
  "your-username/nvim-amp-theme",
  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function()
    require("amp").setup({
      -- optional configuration
      transparent_background = false,
      integrations = {
        telescope = true,
        neotree = true,
        which_key = true,
        -- ... see config.lua for more
      }
    })
    vim.cmd([[colorscheme amp]])
  end,
}
```

### AstroNvim

Add the plugin to your `plugins/user.lua` or similar:

```lua
return {
  {
    "your-username/nvim-amp-theme",
    lazy = false,
    priority = 1000,
    opts = {
        transparent_background = false,
        -- ...
    },
    config = function(_, opts)
        require("amp").setup(opts)
        vim.cmd.colorscheme("amp")
    end,
  },
}
```

Then set the colorscheme in your `astronvim/options.lua` or `polish` function:

```lua
-- options.lua
return {
  -- ...
  colorscheme = "amp",
}
```

