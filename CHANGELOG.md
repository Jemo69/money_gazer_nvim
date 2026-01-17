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
- **Enhanced keyword highlighting system:**
  - Made main `@keyword` group bold for better visibility
  - Added comprehensive keyword-related captures:
    - Directives (directive, directive.define)
    - Type keywords (type, type.enum, type.struct, type.interface, type.union, type.class)
    - Modifiers (modifier, modifier.let, modifier.mut, modifier.ref, modifier.unsafe, modifier.const, modifier.static, volatile, register, thread_local, virtual, inline, extern, abstract, final, override)
    - Operators (operator.logical, operator.arithmetic, operator.comparison, operator.bitwise, operator.assignment, operator.increment, operator.decrement)
    - Flow control (switch, case, continue, goto, return, yield, try, catch, finally, throw, await, async)
    - Storage (const, let, var, function, type, class, interface, extends, enum, new, super, this, static)
    - Import/export (import, export, from, as, default, export.default, export.from, export.as)
    - Access (public, private, protected, readonly, writeonly)
    - Object-oriented (constructor, prototype, get, set, target, implements, extends, class)
    - Other (null, undefined, true, false, and, or, not, in, instanceof, typeof, new, delete, void, this, super)
    - Language-specific keywords for:
      - C (register, volatile, restrict, sizeof, alignof, extern)
      - Go (defer, go, select, range, map, chan, interface, struct)
      - Rust (mut, move, mod, ref, crate, type)
      - Java (extends, implements, interface, public, private, protected, this, super, final, abstract, static)
      - Python (yield, with, as, import, from, nonlocal, global, lambda, class, raise)
      - Ruby (def, class, module, begin, end, rescue, ensure, alias, defined?, unless, yield)
      - Swift (mutating, nonmutating, convenience, override, required, optional, weak, unowned, lazy, final, let, var)
      - Kotlin (val, var, object, companion, data, sealed, open, const, init, typealias, crossinline, reified, external, infix, suspend, tailrec, out, header, param, vararg, noinline)
      - C# (using, lock, fixed, readonly, get, set, add, remove, where, select, join, group, into, partial, async, await, yield, checked, unchecked, unsafe, stackalloc, dynamic, extern)
      - PHP (var, function, class, extends, implements, public, private, protected, abstract, final, static, final)
      - CSS (important, property.class, property.id, property.class)
      - Bash (function, variable)
      - YAML/TOML (key, section)
      - Dockerfile (keyword)
      - GraphQL (keyword, type)
      - Make (keyword, function, variable, operator)
      - INI (section, key)
      - CSV (col)
      - Markdown (heading, link, code, list)
  - GraphQL (argument, field, type)
  - SQL (select, insert, update, delete, create, drop, alter, from, where, join, inner, outer, left, right, group, by, having, limit, offset, union, all, distinct, exists, between, like, and, or, not, is, null, in, distinct, case, when, escape)
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
- Updated error handling for color manipulation utilities
- Fixed template references to use Moneygazer's color palette
- Ensured proper linking of related highlight groups
- Fixed typo in highlight group names (keyword.yield -> keyword.yield)
- Fixed spacing issues in highlight group names
- Improved error handling for color manipulation utilities

### Improved
- **Significantly improved keyword highlighting visibility with bold attribute**
- **Added 100+ additional keyword-related capture groups for comprehensive language support**
- **Organized keywords by category (types, modifiers, operators, flow control, storage, imports)**
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
