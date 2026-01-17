# Contributing to Moneygazer

Thank you for your interest in contributing to Moneygazer! This document provides guidelines for contributing to the project.

## Code of Conduct

Please be respectful and constructive in all interactions. We aim to maintain a welcoming and inclusive community.

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/moneygazer.nvim.git`
3. Create a new branch: `git checkout -b feature/your-feature-name`

## Development Setup

1. Ensure you have Neovim 0.8+ installed
2. Copy the theme to your Neovim config:
   ```bash
   cp -r moneygazer.nvim ~/.config/nvim/lazy/moneygazer.nvim
   ```
3. Add to your `init.lua`:
   ```lua
   require('moneygazer').setup()
   ```
4. Make your changes
5. Test by reloading Neovim

## Adding Support for New Languages

When adding language support:

1. Add language-specific Treesitter highlights to `lua/moneygazer/groups.lua`
2. Follow the naming convention: `@keyword.<language>`, `@type.<language>`, etc.
3. Use Moneygazer's color palette:
   - Primary (gold/orange): keywords, important elements
   - Secondary (purple): functions, imports, special
   - Accent (magenta/violet): constants, special characters
   - Success (green): positive indicators
   - Warning (gold/orange): warnings
   - Error (red): errors, deletions
   - Info (blue): informational content
   - Hint (magenta): hints, suggestions

Example:
```lua
["@keyword.yourlang"] = { fg = p.secondary[500] },
["@type.yourlang"] = { fg = p.secondary[300] },
["@operator.yourlang"] = { fg = p.primary[500] },
```

4. Test with actual code in that language
5. Update documentation in README.md

## Adding Plugin Support

When adding support for a new plugin:

1. Create highlight groups following the plugin's naming convention
2. Add to `lua/moneygazer/groups.lua`
3. Use appropriate colors from the palette
4. Ensure transparency support if the plugin supports it

Example:
```lua
-- NewPlugin support
NewPluginNormal = { link = "Normal" },
NewPluginBorder = { fg = p.border[400], bg = p.background[50] },
NewPluginSelection = { fg = p.background[50], bg = p.primary[500] },
```

5. Test with the plugin installed
6. Document the added support in README.md

## Improving Colors

When suggesting color changes:

1. Provide reasoning for the change
2. Include examples showing the improvement
3. Ensure accessibility (WCAG 2.2 AA compliance)
4. Test in various lighting conditions

Use the utility functions to check contrast:
```lua
local util = require('moneygazer.util')
local ratio = util.contrast_ratio(fg_color, bg_color)
-- Should be >= 4.5 for AA compliance
```

## Adding New Features

When adding new features:

1. Follow existing code patterns
2. Maintain backward compatibility
3. Add tests if possible
4. Update documentation
5. Add examples to EXAMPLES.md

## Code Style

- Use 2 spaces for indentation
- Follow Lua best practices
- Use descriptive variable names
- Add comments for complex logic
- Keep functions small and focused

## Testing

Before submitting a PR:

1. Test the theme with Neovim headless:
   ```bash
   nvim --headless -c "lua require('moneygazer').setup()" -c "qa"
   ```

2. Test with various file types and plugins
3. Check for syntax errors:
   ```bash
   lua -e "dofile('lua/moneygazer/init.lua')"
   ```

4. Verify all highlights are valid (no special characters in names)

## Accessibility Guidelines

Moneygazer aims to be WCAG 2.2 AA compliant:

- Normal text: minimum 4.5:1 contrast ratio
- Large text: minimum 3:1 contrast ratio
- Enhanced (AAA): 7:1 contrast ratio for critical elements

Use the accessibility utilities:
```lua
local util = require('moneygazer.util')

-- Check AA compliance
local is_aa, ratio = util.check_aa(fg, bg)

-- Check AAA compliance
local is_aaa, ratio = util.check_aaa(fg, bg)
```

## Submitting Changes

1. Update CHANGELOG.md with your changes
2. Commit with a clear message:
   ```bash
   git commit -m "Add support for Rust language

   - Added Rust-specific keyword highlights
   - Added lifetime highlighting
   - Updated documentation"
   ```
3. Push to your fork
4. Create a Pull Request on GitHub

## Pull Request Guidelines

- Describe the changes and their purpose
- Link related issues
- Include screenshots if the change is visual
- Ensure all CI checks pass
- Keep PRs focused on a single issue

## Reporting Issues

When reporting issues:

1. Use the issue template if available
2. Include:
   - Neovim version
   - Theme version (git commit)
   - Terminal emulator
   - Minimal reproduction config
   - Screenshots or screen recordings if visual

## Documentation

- Update README.md when adding features
- Add examples to EXAMPLES.md
- Keep documentation up-to-date with code changes
- Use clear, concise language
- Include code examples

## Release Process

Releases are created by maintainers:

1. Update version in lua/moneygazer/init.lua
2. Update CHANGELOG.md
3. Create git tag: `git tag -a v1.0.0 -m "Release version 1.0.0"`
4. Push tag: `git push origin v1.0.0`

## Questions?

- Check existing issues and discussions
- Read documentation thoroughly
- Ask in Discussions before creating PRs for major changes
- Be patient - maintainers volunteer their time

## Recognition

Contributors will be acknowledged in:
- README.md contributors section
- CHANGELOG.md release notes
- Project documentation

Thank you for contributing to Moneygazer! 🎨
