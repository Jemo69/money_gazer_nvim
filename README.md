# Moneygazer Nvim Theme

A modern, accessible, and highly customizable Neovim colorscheme with comprehensive syntax highlighting support for 50+ programming languages and 60+ plugins.

## ✨ Features

- 🎨 **Comprehensive Syntax Highlighting**: Support for 50+ programming languages with Treesitter and LSP semantic tokens
- ♿ **WCAG Compliant**: Full accessibility support with WCAG 2.2 AA/AAA contrast ratios
- 🔌 **60+ Plugin Integrations**: Built-in support for Telescope, NvimTree, GitSigns, Cmp, and many more
- 🎯 **Semantic Tokens**: Rich LSP semantic highlighting for classes, functions, variables, and more
- 🌙 **Multiple Styles**: Dark and light variants with transparency support
- 🔧 **Highly Customizable**: Extensive API for customizing colors and highlights
- ⚡ **Performance Optimized**: Caching system for faster theme loading
- 📝 **Documentation**: Extensive documentation and examples

## 📦 Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  'yourusername/moneygazer.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('moneygazer').setup()
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'yourusername/moneygazer.nvim'
colorscheme moneygazer
```

### Manual Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/moneygazer.nvim ~/.config/nvim/lazy/moneygazer.nvim
   ```

2. Add to your Neovim config:
   ```lua
   require('moneygazer').setup()
   ```

## 🚀 Usage

### Basic Setup

```lua
require('moneygazer').setup()
```

### Advanced Configuration

```lua
require('moneygazer').setup({
  -- Style variant: 'dark', 'day', 'storm', 'night', 'moon'
  style = 'dark',

  -- Enable transparency
  transparent = false,

  -- Set terminal colors
  terminal_colors = true,

  -- Style options
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = 'dark',     -- 'dark', 'transparent', or 'normal'
    floats = 'dark',        -- 'dark', 'transparent', or 'normal'
  },

  -- Day style brightness (0.0 to 1.0)
  day_brightness = 0.3,

  -- Dim inactive windows
  dim_inactive = false,

  -- Make lualine sections bold
  lualine_bold = false,

  -- Customize colors before highlights are generated
  on_colors = function(colors)
    -- Change specific colors
    colors.error = '#ff0000'
    colors.warning = '#ffaa00'
    -- You can also access color utilities
    local util = require('moneygazer.util')
    colors.my_custom = util.blend(colors.primary[500], colors.secondary[500], 0.5)
  end,

  -- Customize highlights after they're generated
  on_highlights = function(highlights, colors)
    -- Override specific highlight groups
    highlights.TelescopeBorder = {
      fg = colors.primary[500],
      bg = 'NONE',
    }
    highlights['@variable.builtin'] = {
      fg = colors.accent[500],
      bold = true,
    }
  end,

  -- Enable caching for performance
  cache = true,
})
```

## 🎨 Color Palette

### Semantic Colors

The theme includes semantic color groups for better organization:

- `text`: Text content at various opacities (50-950)
- `background`: Background colors for different elements (50-950)
- `primary`: Primary accent color (orange)
- `secondary`: Secondary accent color (purple)
- `accent`: Accent color (magenta)
- `success`: Success indicators (green)
- `info`: Informational content (blue)
- `warning`: Warning messages (orange)
- `error`: Error indicators (red)
- `hint`: Hints and suggestions (magenta)
- `muted`: Subtle UI elements
- `border`: Border and separator colors

### Accessing Colors

```lua
local colors = require('moneygazer.palette')

-- Access specific colors
local fg = colors.text[900]        -- '#cfdcfc'
local bg = colors.background[50]     -- '#060b13'
local primary = colors.primary[500]     -- '#fc9d03'
```

## 🔧 Color Utilities

The theme provides utility functions for color manipulation:

```lua
local util = require('moneygazer.util')

-- Calculate contrast ratio
local ratio = util.contrast_ratio('#ffffff', '#000000') -- 21.0

-- Check WCAG compliance
local meets_aa = util.check_aa('#ffffff', '#000000') -- true

-- Adjust brightness
local lighter = util.adjust_brightness('#000000', 0.5)
local darker = util.adjust_brightness('#ffffff', -0.3)

-- Blend colors
local blended = util.blend('#ff0000', '#0000ff', 0.5)

-- Get complementary color
local complement = util.complementary('#ff0000') -- '#00ffff'
```

## 🌳 Language Support

### Treesitter Highlights

The theme provides comprehensive Treesitter support:

- **Basic**: `@comment`, `@string`, `@number`, `@boolean`, `@keyword`, `@function`, `@type`, `@variable`
- **Advanced**: `@constant.builtin`, `@constructor`, `@string.escape`, `@string.regex`, `@keyword.async`, `@keyword.modifier`
- **Specialized**: `@parameter`, `@field`, `@property`, `@namespace`, `@label`, `@operator`
- **Comments**: `@comment.documentation`, `@comment.error`, `@comment.warning`, `@comment.note`, `@comment.todo`

### LSP Semantic Tokens

Support for LSP semantic tokens:

- **Types**: `@lsp.type.class`, `@lsp.type.enum`, `@lsp.type.interface`, `@lsp.type.struct`
- **Functions**: `@lsp.type.function`, `@lsp.type.method`, `@lsp.type.constructor`
- **Variables**: `@lsp.type.variable`, `@lsp.type.parameter`, `@lsp.type.property`, `@lsp.type.field`
- **Modifiers**: `@lsp.mod.readonly`, `@lsp.mod.static`, `@lsp.mod.abstract`, `@lsp.mod.async`
- **Built-ins**: `@lsp.mod.defaultLibrary`

### Language-Specific Highlights

#### JavaScript/TypeScript
- JSX/TSX tags, `async`/`await`, `typeof`, `instanceof`, `new`

#### Python
- `self`/`super`, decorators, lambda, docstrings

#### Rust
- `crate`, `move`, `mod`, `ref`, lifetime annotations

#### Go
- Channels, `defer`, `select`, `range`, interface/struct tags

#### C/C++
- `extern`, `volatile`, `sizeof`, `alignof`

#### Java/Kotlin
- `this`/`super`, `extends`/`implements`, `val`/`var`

#### Ruby
- Module, `rescue`, `ensure`, `alias`, `defined?`

#### Swift
- `mutating`, `convenience`, `override`, `optional`, `weak`/`unowned`

#### SQL
- SELECT/INSERT/UPDATE with bold, operators, JOIN types

And many more including PHP, Lua, C#, Swift, CSS, HTML, Markdown, YAML, JSON, TOML, Dockerfile, GraphQL, Makefile, and Shell/Bash.

## 🔌 Plugin Support

The theme includes support for 60+ popular plugins:

### UI Plugins
- **Telescope**: Borders, prompt, selections, matches, titles
- **NvimTree**: Directory icons, git status, opened folders
- **NeoTree**: File icons, git highlights
- **BufferLine**: Tabs, separators, modified indicators
- **WhichKey**: Keys, descriptions, separators

### Git Plugins
- **GitSigns**: Added/changed/deleted signs, line highlights
- **GitGutter**: Git diff indicators
- **Neogit**: Git operations interface
- **Octo**: GitHub integration

### Completion
- **nvim-cmp**: Completion menu kinds, match highlighting
- **copilot.lua**: AI suggestions
- **codeium.nvim**: AI code completion

### LSP & Diagnostics
- **nvim-lsp**: LSP highlights, references, signature help
- **trouble.nvim**: Error/warning/info levels
- **lspsaga.nvim**: LSP enhancements

### Navigation
- **leap.nvim**: Jump labels, backdrop
- **hop.nvim**: Jump navigation
- **flash.nvim**: Quick navigation
- **vim-sneak**: Fast movement

### Debugging
- **nvim-dap**: Breakpoints, stopped line

### Status Line
- **lualine.nvim**: Custom integration
- **mini.statusline**: Lightweight status line

### Other Plugins
- **indent-blankline.nvim**: Indent guides
- **vim-illuminate**: Reference highlighting
- **nvim-notify**: Notifications
- **dashboard-nvim**: Start screen
- **alpha-nvim**: Greeter
- **lazy.nvim**: Plugin manager UI

See the source code for a complete list of supported plugins.

## 🎯 Customization Examples

### Change Comment Style

```lua
require('moneygazer').setup({
  styles = {
    comments = { italic = false, bold = true },
  }
})
```

### Transparent Background

```lua
require('moneygazer').setup({
  transparent = true,
  styles = {
    sidebars = 'transparent',
    floats = 'transparent',
  }
})
```

### Override Specific Colors

```lua
require('moneygazer').setup({
  on_colors = function(colors)
    -- Make errors more prominent
    colors.error[500] = '#ff0000'

    -- Change primary color
    colors.primary[500] = '#00ff00'
  end
})
```

### Customize Plugin Highlights

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Customize Telescope
    highlights.TelescopeBorder = {
      fg = 'NONE',
      bg = 'NONE',
    }

    -- Custom floating window
    highlights.NormalFloat = {
      fg = colors.text[900],
      bg = colors.background[100],
    }

    -- Custom cursor line
    highlights.CursorLine = {
      bg = colors.background[200],
    }
  end
})
```

### Language-Specific Overrides

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Make Python keywords different
    highlights['@keyword.python'] = {
      fg = colors.accent[500],
      italic = true,
    }

    -- Make Rust lifetimes distinct
    highlights['@keyword.lifetime.rust'] = {
      fg = colors.primary[400],
    }

    -- Highlight SQL keywords in bold
    highlights['@keyword.select.sql'] = {
      fg = colors.primary[500],
      bold = true,
    }
  end
})
```

## ♿ Accessibility

Moneygazer follows WCAG 2.2 accessibility guidelines:

- **WCAG AA**: Minimum contrast ratio of 4.5:1 for normal text
- **WCAG AAA**: Enhanced contrast ratio of 7:1 for critical elements

You can check contrast ratios:

```lua
local util = require('moneygazer.util')

-- Check if text is WCAG AA compliant
local is_aa, ratio = util.check_aa('#ffffff', '#000000')
print(is_aa)    -- true
print(ratio)     -- 21.0

-- Check if text is WCAG AAA compliant
local is_aaa, ratio = util.check_aaa('#ffffff', '#000000')
print(is_aaa)   -- true
```

## 📊 Performance

The theme includes a caching system for faster loading:

```lua
require('moneygazer').setup({
  cache = true,  -- Enable caching (default: true)
})
```

Cache is stored in `~/.cache/nvim/moneygazer/` and automatically invalidated when theme is updated.

## 🐛 Troubleshooting

### Colors not applying correctly

1. Make sure `termguicolors` is enabled:
   ```vim
   set termguicolors
   ```

2. Ensure your terminal supports true color (24-bit)

3. Try clearing highlights and reloading:
   ```vim
   :hi clear
   :colorscheme moneygazer
   ```

### Treesitter not highlighting

1. Install Treesitter parsers:
   ```vim
   :TSInstall <language>
   ```

2. Ensure Treesitter highlighting is enabled:
   ```lua
   require('nvim-treesitter.configs').setup({
     highlight = {
       enable = true,
     },
   })
   ```

### LSP semantic tokens not working

1. Check if your LSP server supports semantic tokens:
   ```vim
   :LspInfo
   ```

2. Verify semantic highlighting is enabled in your LSP config

## 📚 API Reference

### `require('moneygazer').setup(opts)`

Main setup function.

**Parameters:**
- `opts` (table): Configuration options

**Returns:**
- Table with `colors`, `highlights`, and `config`

### `require('moneygazer.palette')`

Access the color palette.

**Returns:**
- Table of all color definitions

### `require('moneygazer.util')`

Access utility functions.

**Returns:**
- Table with utility functions for color manipulation

## 🤝 Contributing

Contributions are welcome! Areas to contribute:

1. Add support for new languages
2. Improve plugin integrations
3. Enhance accessibility
4. Fix bugs and add features
5. Improve documentation

## 📄 License

MIT License - see [LICENSE](LICENSE) for details.

## 🙏 Acknowledgments

- Inspired by popular themes like TokyoNight, OneDark, and Nord
- Built with Treesitter and LSP in mind
- Accessibility guidelines from WCAG 2.2

## 📞 Support

- **Issues**: [GitHub Issues](https://github.com/yourusername/moneygazer.nvim/issues)
- **Discussions**: [GitHub Discussions](https://github.com/yourusername/moneygazer.nvim/discussions)
