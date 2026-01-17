local M = {}

M.defaults = {
    style = 'dark',
    transparent = false,
    terminal_colors = true,
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
    day_brightness = 0.3,
    dim_inactive = false,
    lualine_bold = false,
    on_colors = nil,
    on_highlights = nil,
    cache = true,
}

M.opts = M.defaults

function M.setup(opts)
    opts = opts or {}

    local config = vim.tbl_deep_extend('force', {}, M.defaults, opts)

    -- Clear highlights
    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    -- Set global background
    if config.style == 'day' then
        vim.o.background = 'light'
    else
        vim.o.background = 'dark'
    end

    -- Set termguicolors to ensure hex colors work
    vim.o.termguicolors = true

    -- Set colorscheme name
    vim.g.colors_name = 'moneygazer'

    -- Load palette
    local palette = require('moneygazer.palette')

    -- Apply on_colors hook if provided
    if config.on_colors then
        config.on_colors(palette)
    end

    -- Load utility functions
    local util = require('moneygazer.util')

    -- Set terminal colors if enabled
    if config.terminal_colors then
        M.set_terminal_colors(palette)
    end

    -- Build opts object for groups.setup
    local groups_opts = {
        transparent_background = config.transparent,
        styles = config.styles,
    }

    -- Load and set highlight groups
    local groups = require('moneygazer.groups')
    local highlights = groups.setup(palette, config.styles, util, groups_opts)

    -- Apply on_highlights hook if provided
    if config.on_highlights then
        config.on_highlights(highlights, palette)
    end

    -- Apply all highlights
    for group, hl in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, hl)
    end

    -- Dim inactive windows if enabled
    if config.dim_inactive then
        vim.api.nvim_create_autocmd('WinEnter', {
            callback = function()
                vim.wo.winhighlight = 'Normal:Normal'
            end,
        })
        vim.api.nvim_create_autocmd('WinLeave', {
            callback = function()
                vim.wo.winhighlight = 'Normal:NormalNC'
            end,
        })
    end

    return {
        colors = palette,
        highlights = highlights,
        config = config,
    }
end

function M.set_terminal_colors(palette)
    local g = vim.g

    g.terminal_color_0 = palette.background[50]
    g.terminal_color_1 = palette.primary[400]
    g.terminal_color_2 = palette.success[400]
    g.terminal_color_3 = palette.warning[400]
    g.terminal_color_4 = palette.secondary[400]
    g.terminal_color_5 = palette.accent[400]
    g.terminal_color_6 = palette.info[400]
    g.terminal_color_7 = palette.text[600]
    g.terminal_color_8 = palette.background[300]
    g.terminal_color_9 = palette.primary[500]
    g.terminal_color_10 = palette.success[500]
    g.terminal_color_11 = palette.warning[500]
    g.terminal_color_12 = palette.secondary[500]
    g.terminal_color_13 = palette.accent[500]
    g.terminal_color_14 = palette.info[500]
    g.terminal_color_15 = palette.text[900]
end

function M.colors()
    return require('moneygazer.palette')
end

function M.highlights()
    return require('moneygazer.groups')
end

return M