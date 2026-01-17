# Moneygazer Theme Examples

This file contains various configuration examples for the Moneygazer Neovim theme.

## Basic Setup

```lua
-- In your init.lua
require('moneygazer').setup()
```

## Transparent Background

```lua
require('moneygazer').setup({
  transparent = true,
})
```

## Custom Styles

```lua
require('moneygazer').setup({
  styles = {
    comments = { italic = true, bold = true },
    keywords = { italic = false, bold = true },
    functions = { bold = true },
    variables = { bold = true },
  },
})
```

## Disable Comments Italic

```lua
require('moneygazer').setup({
  styles = {
    comments = { italic = false },
  },
})
```

## Transparent Sidebars and Floats

```lua
require('moneygazer').setup({
  transparent = true,
  styles = {
    sidebars = 'transparent',
    floats = 'transparent',
  },
})
```

## Override Colors

```lua
require('moneygazer').setup({
  on_colors = function(colors)
    -- Change error color
    colors.error[500] = '#ff0000'

    -- Change primary color (gold/orange accent)
    colors.primary[500] = '#00ff00'

    -- You can use the utility functions
    local util = require('moneygazer.util')

    -- Create a custom color by blending
    colors.custom = util.blend(colors.primary[500], colors.secondary[500], 0.5)

    -- Darken a color
    colors.darkened_error = util.darken(colors.error[500], 0.2)
  end
})
```

## Override Specific Highlight Groups

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Change comment color
    highlights.Comment = {
      fg = colors.text[400],
      italic = true,
    }

    -- Make keywords bold and not italic
    highlights.Keyword = {
      fg = colors.primary[500],
      bold = true,
    }

    -- Make strings more vibrant
    highlights.String = {
      fg = colors.accent[200],
    }

    -- Custom line number
    highlights.LineNr = {
      fg = colors.primary[400],
    }

    -- Change cursor line
    highlights.CursorLine = {
      bg = colors.background[150],
    }
  end
})
```

## Language-Specific Overrides

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Python: make self and super italic
    highlights['@keyword.self'] = {
      fg = colors.secondary[400],
      italic = true,
    }
    highlights['@keyword.super'] = {
      fg = colors.secondary[400],
      italic = true,
    }

    -- JavaScript: make async/await distinct
    highlights['@keyword.await'] = {
      fg = colors.accent[500],
      italic = true,
    }

    -- Rust: make lifetimes distinct
    highlights['@keyword.lifetime.rust'] = {
      fg = colors.primary[400],
    }

    -- SQL: make keywords bold
    highlights['@keyword.select.sql'] = {
      fg = colors.primary[500],
      bold = true,
    }
  end
})
```

## Plugin-Specific Overrides

### Telescope

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Transparent Telescope borders
    highlights.TelescopeBorder = {
      fg = 'NONE',
      bg = 'NONE',
    }

    -- Custom prompt color
    highlights.TelescopePromptNormal = {
      fg = colors.text[900],
      bg = colors.background[100],
    }

    -- Match highlighting
    highlights.TelescopeMatching = {
      fg = colors.primary[400],
      bold = true,
    }
  end
})
```

### NvimTree

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Change folder colors
    highlights.NvimTreeFolderName = {
      fg = colors.info[500],
      bold = true,
    }

    -- File icon colors
    highlights.NvimTreeFileIcon = {
      fg = colors.primary[400],
    }
  end
})
```

### Cmp (Completion)

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Make matched text more prominent
    highlights.CmpItemAbbrMatch = {
      fg = colors.primary[500],
      bold = true,
    }

    -- Menu colors
    highlights.CmpItemMenu = {
      fg = colors.text[700],
    }
  end
})
```

### WhichKey

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Key colors
    highlights.WhichKey = {
      fg = colors.primary[500],
    }

    -- Description colors
    highlights.WhichKeyDesc = {
      fg = colors.text[900],
    }
  end
})
```

## Accessibility Examples

```lua
require('moneygazer').setup({
  on_colors = function(colors)
    local util = require('moneygazer.util')

    -- Ensure all text meets WCAG AA (4.5:1 contrast)
    for i = 50, 950, 100 do
      local contrast = util.contrast_ratio(colors.text[i], colors.background[50])
      if contrast < 4.5 then
        -- Adjust color if needed
        colors.text[i] = util.adjust_brightness(colors.text[i], 0.2)
      end
    end

    -- Check and fix error color
    local is_aa, ratio = util.check_aa(colors.error[500], colors.background[50])
    if not is_aa then
      print('Error color not WCAG AA compliant: ' .. ratio)
    end
  end
end,
})
```

## Dim Inactive Windows

```lua
require('moneygazer').setup({
  dim_inactive = true,
})
```

## Terminal Colors

```lua
require('moneygazer').setup({
  terminal_colors = true,
})
```

## Complete Configuration Example

```lua
require('moneygazer').setup({
  -- Style variant
  style = 'dark',

  -- Transparency
  transparent = false,

  -- Terminal colors
  terminal_colors = true,

  -- Custom styles
  styles = {
    comments = { italic = true },
    strings = {},
    numbers = {},
    booleans = {},
    variables = {},
    functions = {},
    conditionals = {},
    loops = {},
    operators = {},
    keywords = { italic = true },
    types = {},
    sidebars = 'dark',
    floats = 'dark',
  },

  -- Day brightness
  day_brightness = 0.3,

  -- Dim inactive windows
  dim_inactive = false,

  -- Lualine bold
  lualine_bold = false,

  -- Custom colors
  on_colors = function(colors)
    -- Add custom colors
    colors.my_custom = '#ffffff'

    -- Modify existing colors
    colors.primary[500] = '#ffaa00'
  end,

  -- Custom highlights
  on_highlights = function(highlights, colors)
    -- Override specific groups
    highlights.Comment = {
      fg = colors.text[400],
      italic = true,
    }
  end,

  -- Caching
  cache = true,
})
```

## Using Color Utilities

```lua
local util = require('moneygazer.util')

-- Calculate luminance
local lum = util.luminance('#ffffff') -- 1.0

-- Calculate contrast ratio
local ratio = util.contrast_ratio('#ffffff', '#000000') -- 21.0

-- Check WCAG AA compliance
local meets_aa = util.check_aa('#ffffff', '#000000') -- true

-- Check WCAG AAA compliance
local meets_aaa = util.check_aaa('#ffffff', '#000000') -- true

-- Adjust brightness (lighten)
local lighter = util.adjust_brightness('#000000', 0.5) -- '#808080'

-- Adjust brightness (darken)
local darker = util.adjust_brightness('#ffffff', -0.3) -- '#b3b3b3'

-- Blend colors
local blended = util.blend('#ff0000', '#0000ff', 0.5) -- '#800080'

-- Get complementary color
local complement = util.complementary('#ff0000') -- '#00ffff'
```

## Accessing Palette

```lua
local colors = require('moneygazer.palette')

-- Text colors
local text_fg = colors.text[900] -- '#cfdcfc'
local text_muted = colors.text[500] -- '#0f4ff0'

-- Background colors
local bg_main = colors.background[50] -- '#060b13'
local bg_dim = colors.background[100] -- '#0c1527'

-- Semantic colors
local error_color = colors.error[500] -- '#ff0000'
local warning_color = colors.warning[500] -- '#fc9d03'
local success_color = colors.success[500] -- '#2eee55'
local info_color = colors.info[500] -- '#1450f0'
local hint_color = colors.hint[500] -- '#8a12ed'

-- Accent colors
local primary = colors.primary[500] -- '#fc9d03' (gold/orange)
local secondary = colors.secondary[500] -- '#5412ed' (purple)
local accent = colors.accent[500] -- '#8a12ed' (magenta)
```

## Multiple Configurations

```lua
-- You can create multiple configurations
local function setup_theme(style)
  require('moneygazer').setup({
    style = style,
    styles = {
      comments = { italic = true },
      keywords = { italic = style == 'dark' },
    },
  })
end

-- Switch themes
vim.keymap.set('n', '<leader>td', function() setup_theme('dark') end)
vim.keymap.set('n', '<leader>tl', function() setup_theme('light') end)
```

## Lualine Integration

```lua
require('lualine').setup({
  options = {
    theme = 'moneygazer',
    component_separators = { left = '|', right = '|' },
  },
})
```

## Lazy.nvim Integration

```lua
require('lazy').setup({
  -- Your lazy config
  ui = {
    custom = {
      -- Use moneygazer colors
      a = { fg = '#fc9d03', bg = '#0c1527' },
      b = { fg = '#5412ed', bg = '#0c1527' },
      c = { fg = '#2eee55', bg = '#0c1527' },
    },
  },
})
```

## Debugging Highlight Issues

```lua
require('moneygazer').setup({
  on_highlights = function(highlights, colors)
    -- Print highlight groups to debug
    for group, hl in pairs(highlights) do
      if group:match('@') then
        print(group, vim.inspect(hl))
      end
    end

    -- Check for undefined groups
    vim.api.nvim_create_autocmd('VimEnter', {
      callback = function()
        local ok, result = pcall(vim.api.nvim_get_hl, 0, '@undefined.group')
        if not ok then
          print('Undefined highlight: @undefined.group')
        end
      end,
    })
  end
})
```

## Performance Optimization

```lua
require('moneygazer').setup({
  -- Enable caching for faster startup
  cache = true,

  -- Only load highlights once
  on_highlights = function(highlights)
    -- Apply all highlights in one batch
    local batch = {}
    for group, hl in pairs(highlights) do
      batch[group] = hl
    end

    -- Set all at once
    for group, hl in pairs(batch) do
      vim.api.nvim_set_hl(0, group, hl)
    end

    -- Clear the highlights table to free memory
    return {} -- Return empty table to prevent re-application
  end,
})
```
