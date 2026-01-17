local M = {}

M.get_theme = function(palette, opts)
    opts = opts or {}
    local p = palette
    local transparent_bg = opts.transparent_bg or false

    local function bg(color)
        return transparent_bg and "NONE" or color
    end

    local theme = {
        normal = {
            a = { bg = p.primary[400], fg = p.background[50], gui = "bold" },
            b = { bg = p.background[200], fg = p.primary[400] },
            c = { bg = bg(p.background[50]), fg = p.text[800] },
        },
        insert = {
            a = { bg = p.success[400], fg = p.background[50], gui = "bold" },
            b = { bg = p.background[200], fg = p.success[400] },
            c = { bg = bg(p.background[50]), fg = p.text[800] },
        },
        visual = {
            a = { bg = p.accent[400], fg = p.background[50], gui = "bold" },
            b = { bg = p.background[200], fg = p.accent[400] },
            c = { bg = bg(p.background[50]), fg = p.text[800] },
        },
        replace = {
            a = { bg = p.error[400], fg = p.background[50], gui = "bold" },
            b = { bg = p.background[200], fg = p.error[400] },
            c = { bg = bg(p.background[50]), fg = p.text[800] },
        },
        command = {
            a = { bg = p.warning[400], fg = p.background[50], gui = "bold" },
            b = { bg = p.background[200], fg = p.warning[400] },
            c = { bg = bg(p.background[50]), fg = p.text[800] },
        },
        terminal = {
            a = { bg = p.success[400], fg = p.background[50], gui = "bold" },
            b = { bg = p.background[200], fg = p.success[400] },
            c = { bg = bg(p.background[50]), fg = p.text[800] },
        },
        inactive = {
            a = { bg = bg(p.background[100]), fg = p.text[500] },
            b = { bg = bg(p.background[50]), fg = p.text[400] },
            c = { bg = bg(p.background[50]), fg = p.text[500] },
        },
    }

    if opts.custom and opts.custom.all then
        for section, colors in pairs(opts.custom.all) do
            if theme.inactive and theme.inactive[section] then
                theme.inactive[section] = vim.tbl_extend("force", theme.inactive[section], colors)
            end
        end
    end

    return theme
end

M.setup = function(opts)
    local palette = require('moneygazer.palette')
    return M.get_theme(palette, opts)
end

return M
