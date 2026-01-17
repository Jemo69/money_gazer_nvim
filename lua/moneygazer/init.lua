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

    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    if config.style == 'day' then
        vim.o.background = 'light'
    else
        vim.o.background = 'dark'
    end

    vim.o.termguicolors = true
    vim.g.colors_name = 'moneygazer'

    local palette = require('moneygazer.palette')

    if config.on_colors then
        config.on_colors(palette)
    end

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

    if config.on_highlights then
        config.on_highlights(highlights, palette)
    end

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

    M.force_keyword_highlighting(palette)

    return {
        colors = palette,
        highlights = highlights,
        config = config,
    }
end

function M.force_keyword_highlighting(palette)
    local p = palette
    local gold = p.primary[500]
    local purple = p.secondary[500]

    local core_keywords = {
        'Keyword', 'Statement', 'Conditional', 'Repeat', 'Label',
    }

    for _, group in ipairs(core_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = gold, bold = true })
    end

    local type_keywords = {
        '@keyword.class', '@keyword.struct', '@keyword.interface',
        '@keyword.enum', '@keyword.type', '@keyword.typedef',
        '@keyword.module', '@keyword.package', '@keyword.namespace',
        '@keyword.trait', '@keyword.abstract', '@keyword.final',
        '@keyword.extends', '@keyword.implements',
    }

    for _, group in ipairs(type_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = purple, bold = true })
    end

    local control_keywords = {
        '@keyword.if', '@keyword.elif', '@keyword.then', '@keyword.else',
        '@keyword.switch', '@keyword.case', '@keyword.for', '@keyword.while',
        '@keyword.do', '@keyword.loop', '@keyword.repeat', '@keyword.until',
        '@keyword.return', '@keyword.break', '@keyword.continue',
        '@keyword.goto', '@keyword.try', '@keyword.catch', '@keyword.finally',
        '@keyword.throw', '@keyword.except', '@keyword.raise', '@keyword.defer',
    }

    for _, group in ipairs(control_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = gold, bold = true })
    end

    local modifier_keywords = {
        '@keyword.const', '@keyword.let', '@keyword.var',
        '@keyword.static', '@keyword.public', '@keyword.private',
        '@keyword.protected', '@keyword.readonly', '@keyword.override',
    }

    for _, group in ipairs(modifier_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = gold, bold = true })
    end

    local other_keywords = {
        '@keyword', '@keyword.return', '@keyword.import', '@keyword.export',
        '@keyword.from', '@keyword.as', '@keyword.function',
        '@keyword.async', '@keyword.await', '@keyword.yield',
        '@keyword.typeof', '@keyword.instanceof', '@keyword.new',
        '@keyword.delete', '@keyword.void', '@keyword.null',
        '@keyword.undefined', '@keyword.true', '@keyword.false',
        '@keyword.this', '@keyword.super', '@keyword.self',
        '@keyword.operator', '@keyword.debug', '@keyword.directive',
        '@keyword.coroutine', '@keyword.exception', '@keyword.modifier',
    }

    for _, group in ipairs(other_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = gold, bold = true })
    end

    local lang_keywords = {
        '@keyword.crate', '@keyword.macro', '@keyword.mod', '@keyword.ref', '@keyword.move',
        '@keyword.channel', '@keyword.go', '@keyword.select', '@keyword.range', '@keyword.map', '@keyword.chan',
        '@keyword.extern', '@keyword.register', '@keyword.volatile', '@keyword.restrict', '@keyword.sizeof', '@keyword.alignof',
        '@keyword.self', '@keyword.super', '@keyword.lambda',
        '@keyword.decorator', '@keyword.decorator.parameter',
        '@keyword.package', '@keyword.extends', '@keyword.implements', '@keyword.this',
        '@keyword.begin', '@keyword.end', '@keyword.rescue', '@keyword.ensure', '@keyword.alias', '@keyword.undef', '@keyword.defined',
        '@keyword.mutating', '@keyword.nonmutating', '@keyword.convenience',
        '@keyword.use', '@keyword.in', '@keyword.of', '@keyword.where',
        '@keyword.local', '@keyword.global', '@keyword.constant',
    }

    for _, group in ipairs(lang_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = gold, bold = true })
    end

    local lsp_keywords = {
        '@lsp.type.keyword',
    }

    for _, group in ipairs(lsp_keywords) do
        pcall(vim.api.nvim_set_hl, 0, group, { fg = gold, bold = true })
    end
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