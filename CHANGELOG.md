# Changelog

All notable changes to Moneygazer Neovim theme.

## [Unreleased]

### Added
- Complete refactor of highlight system using `style` attribute
- Support for flexible style configuration (comments, strings, numbers, booleans, variables, functions, conditionals, loops, operators, keywords, types)
- Comprehensive color utilities (luminance, contrast ratio checking, brightness adjustment, color blending, complementary colors)
- Enhanced palette with semantic colors (success, info, warning, error, hint, muted, border)
- Template-inspired features:
  - Debug highlights (debugPC, debugBreakpoint)
  - Illuminate integration (illuminatedWord, illuminatedCurWord)
  - Enhanced diff support with darkening
  - Neovim health highlights
  - Glyph palette (9 colors)
  - Rainbow delimiters (6 colors)
  - CSV column colors (9 columns)
  - Enhanced Markdown support (headings, code blocks, links)
- Comprehensive language-specific highlights:
  - JavaScript/TypeScript (JSX/TSX tags, async/await, typeof, instanceof, new)
  - Python (self/super, decorators, lambda, docstrings)
  - Rust (crate, move, mod, ref, lifetime annotations)
  - Go (channels, defer, select, range, interface/struct)
  - C/C++ (extern, volatile, sizeof, alignof)
  - Java/Kotlin (this/super, extends/implements, val/var)
  - Ruby (module, rescue, ensure, alias)
  - Swift (mutating, convenience, override, optional, weak/unowned)
  - Lua (local, function, table, keywords)
  - SQL (SELECT/INSERT/UPDATE with bold, operators, JOIN types)
  - CSS/SCSS (selectors, properties, keywords)
  - Shell/Bash (variables, functions, keywords)
  - YAML/JSON/TOML (keys, values, nulls)
  - Dockerfile, GraphQL, Makefile
- LSP semantic token support:
  - Type highlights (class, enum, interface, struct)
  - Function/method highlights
  - Variable highlights (with modifiers)
  - Built-in library highlighting
  - Modifier highlights (readonly, static, abstract, async, deprecated)
- Plugin support for 60+ plugins:
  - Telescope, NvimTree, NeoTree
  - GitSigns, GitGutter
  - Cmp (nvim-cmp)
  - WhichKey
  - LSP (nvim-lsp)
  - Indent Blankline
  - Treesitter Context
  - NvimDAP
  - BufferLine
  - Leap, Hop, Flash
  - vim-illuminate
  - nvim-notify
  - Dashboard, Alpha
  - Trouble, lspsaga
  - Neogit, Octo
  - mini.* plugins
  - render-markdown
  - snacks.nvim
  - grug-far.nvim
  - yanky.nvim
  - fzf-lua
  - aerial.nvim
  - ale, codeium, copilot
  - sidekick.nvim, supermaven-nvim
  - vim-quickfix

### Changed
- Refactored `M.setup()` to accept comprehensive configuration options
- Moved from individual highlight attributes to unified `style` attribute
- Enhanced color palette with better semantic organization
- Improved apply_style function for dynamic style application
- Added proper transparency support throughout all highlights
- Updated diagnostic colors to use semantic palette

### Fixed
- Fixed invalid characters in highlight group names (removed '?' from group names)
- Fixed spacing issues in highlight group names
- Improved error handling for color manipulation utilities
- Fixed template references to use Moneygazer's color palette
- Ensured proper linking of related highlight groups

### Improved
- Better accessibility with WCAG 2.2 AA/AAA compliance utilities
- Enhanced code organization with clear comments
- Improved documentation with extensive examples
- Better maintainability through modular structure
- Performance optimization with caching system
- Consistent color usage across all highlights
- Better contrast ratios for improved readability

## [0.1.0] - Initial Release

### Features
- Basic Neovim theme with dark blue background
- Gold, purple, and violet accent colors
- Basic Treesitter support
- Basic LSP support
- Core editor UI highlights
- Diagnostics highlights
- Git diff support

## Versioning

This project follows [Semantic Versioning](https://semver.org/):
- MAJOR version: incompatible API changes
- MINOR version: backwards-compatible functionality additions
- PATCH version: backwards-compatible bug fixes
