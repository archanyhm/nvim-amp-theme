# nvim-amp-theme

> [!WARNING]
> This repository was mostly created using [Amp Code](https://ampcode.com/). If it works, it's because Amp is awesome. If it breaks, blame Amp (jk, please file an issue).

A minimal, high-contrast dark theme for Neovim.

Design based on the Amp Code theme provided by [Tim Culverhouse (rockorager)](https://github.com/rockorager).
Originally based on the Sourcegraph Amp Code colorscheme.

## Variants

- `amp` - Blue highlights (default)
- `amp-orange` - Orange highlights

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

Add the plugin to your `lua/plugins/user.lua` or similar:

```lua
return {
  {
    "your-username/nvim-amp-theme",
    lazy = false,
    priority = 1000,
    config = function(plugin, opts)
      require("amp").setup(opts)
      vim.cmd("colorscheme amp")
    end,
    opts = {
      transparent_background = false,
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
    },
  },
}
```

For AstroNvim v4, you can also set colorscheme in `astronvim/init.lua`:

```lua
-- astronvim/init.lua
return {
  colorscheme = "amp",
}
```

For AstroNvim v3, set it in `astronvim/options.lua`:

```lua
-- astronvim/options.lua
return {
  colorscheme = "amp",
}
```

## Usage

Switch between variants at runtime:

```vim
" Blue theme
colorscheme amp

" Orange theme
colorscheme amp-orange
```

