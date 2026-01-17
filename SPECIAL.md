# Moneygazer Special Themes

Moneygazer includes special theme integrations for popular Neovim plugins.

## Lualine Integration

Moneygazer provides a beautiful lualine theme that matches your colorscheme.

### Basic Setup

```lua
require('lualine').setup {
    options = {
        theme = 'moneygazer',
    },
}
```

### Advanced Setup

```lua
require('lualine').setup {
    options = {
        theme = require('moneygazer').lualine(),
    },
}
```

### Customization

```lua
require('lualine').setup {
    options = {
        theme = require('moneygazer').lualine({
            transparent_bg = false,  -- Enable transparent background
            styles = { 'bold', 'italic' },  -- Apply styles to section components
            custom = {
                all = {
                    a = { bg = '#custom_color', fg = '#custom_fg' },
                },
            },
        }),
    },
}
```

## Bufferline Integration

Moneygazer provides a bufferline theme for `bufferline.nvim`.

### Setup

```lua
require('bufferline').setup {
    highlights = require('moneygazer').bufferline({
        styles = { 'italic', 'bold' },  -- Apply styles to components
        custom = {
            all = {
                fill = { bg = '#000000' },
            },
        },
    }),
}
```

### Note

Bufferline needs to be loaded after setting up Moneygazer or it will highlight incorrectly:

```lua
require('moneygazer').setup()
vim.cmd.colorscheme 'moneygazer'

require('bufferline').setup {
    highlights = require('moneygazer').bufferline(),
}
```

## Color Palette Access

You can access the Moneygazer color palette directly:

```lua
local colors = require('moneygazer').colors()

-- Access individual colors
print(colors.primary[500])   -- Gold
print(colors.secondary[500]) -- Purple
print(colors.success[500])   -- Green
print(colors.warning[500])   -- Orange
print(colors.error[500])     -- Red
print(colors.info[500])      -- Blue
print(colors.hint[500])      -- Magenta
```

## Highlight Groups

Access the highlight groups definition:

```lua
local highlights = require('moneygazer').highlights()
```

This returns the table of all highlight groups defined by Moneygazer.
