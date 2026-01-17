local M = {}

M.get_theme = function(palette, opts)
    opts = opts or {}
    local p = palette
    local styles = opts.styles or {}
    local custom = opts.custom or {}

    local function apply_styles(tbl)
        local result = vim.deepcopy(tbl)
        for _, style in ipairs(styles) do
            if style == "bold" then
                result.gui = (result.gui or "") .. "bold"
            elseif style == "italic" then
                result.gui = (result.gui or "") .. "italic"
            end
        end
        return result
    end

    local background_fg = p.background[50]
    if custom.all and custom.all.fill and custom.all.fill.bg then
        background_fg = custom.all.fill.bg
    end

    local theme = {
        background = {
            fill = { bg = p.background[100] },
            background = { bg = p.background[100], fg = p.text[800] },
            buffer = { bg = p.background[100], fg = p.text[700] },
            buffer_visible = { bg = p.background[200], fg = p.text[700] },
            selected = { bg = p.primary[500], fg = p.background[50] },
            active = { bg = p.background[200], fg = p.text[800] },
            inactive = { bg = p.background[50], fg = p.text[500] },
            alternate = { bg = p.background[100], fg = p.text[600] },
            modified = { bg = p.background[100], fg = p.warning[500] },
            modified_selected = { bg = p.primary[500], fg = p.background[50] },
            modified_visible = { bg = p.background[200], fg = p.warning[500] },
            duplicate = { bg = p.background[100], fg = p.text[500], style = { "italic" } },
            duplicate_selected = { bg = p.primary[500], fg = p.background[50], style = { "italic" } },
            duplicate_visible = { bg = p.background[200], fg = p.text[500], style = { "italic" } },
            tab = { bg = p.background[100], fg = p.text[600] },
            tab_selected = { bg = p.primary[500], fg = p.background[50] },
            tab_separator = { bg = p.background[100], fg = p.primary[500] },
            tab_separator_selected = { bg = p.primary[500], fg = p.primary[500] },
            indicator = { bg = p.background[100], fg = p.primary[500] },
            indicator_selected = { bg = p.primary[500], fg = p.primary[500] },
            pick = { bg = p.accent[500], fg = p.background[50], style = { "bold", "italic" } },
            pick_selected = { bg = p.accent[500], fg = p.background[50], style = { "bold", "italic" } },
            pick_focus = { bg = p.accent[500], fg = p.background[50], style = { "bold", "italic" } },
            numbers = { bg = p.background[100], fg = p.text[600] },
            numbers_selected = { bg = p.primary[500], fg = p.background[50], style = { "bold" } },
            numbers_visible = { bg = p.background[200], fg = p.text[600] },
            separator = { bg = p.background[100], fg = p.background[200] },
            separator_selected = { bg = p.primary[500], fg = p.primary[500] },
            separator_visible = { bg = p.background[200], fg = p.background[200] },
            close_button = { bg = p.background[100], fg = p.text[500] },
            close_button_selected = { bg = p.primary[500], fg = p.background[50] },
            close_button_visible = { bg = p.background[200], fg = p.text[500] },
            truncate_marker_left = { bg = p.background[100], fg = p.text[500] },
            truncate_marker_right = { bg = p.background[100], fg = p.text[500] },
            truncate_marker_selected = { bg = p.primary[500], fg = p.text[500] },
            truncate_marker_visible = { bg = p.background[200], fg = p.text[500] },
            diagnostic = { bg = p.background[100], fg = p.text[500] },
            diagnostic_selected = { bg = p.primary[500], fg = p.background[50] },
            diagnostic_visible = { bg = p.background[200], fg = p.text[500] },
            info = { bg = p.background[100], fg = p.text[500], style = { "italic" } },
            info_selected = { bg = p.primary[500], fg = p.background[50], style = { "italic" } },
            info_visible = { bg = p.background[200], fg = p.text[500], style = { "italic" } },
            hint = { bg = p.background[100], fg = p.text[500], style = { "italic" } },
            hint_selected = { bg = p.primary[500], fg = p.background[50], style = { "italic" } },
            hint_visible = { bg = p.background[200], fg = p.text[500], style = { "italic" } },
            hint_diagnostic = { bg = p.background[100], fg = p.text[500], style = { "italic" } },
            hint_diagnostic_selected = { bg = p.primary[500], fg = p.background[50], style = { "italic" } },
            hint_diagnostic_visible = { bg = p.background[200], fg = p.text[500], style = { "italic" } },
            warning = { bg = p.background[100], fg = p.warning[500] },
            warning_selected = { bg = p.primary[500], fg = p.background[50] },
            warning_visible = { bg = p.background[200], fg = p.warning[500] },
            warning_diagnostic = { bg = p.background[100], fg = p.warning[500] },
            warning_diagnostic_selected = { bg = p.primary[500], fg = p.background[50] },
            warning_diagnostic_visible = { bg = p.background[200], fg = p.warning[500] },
            error = { bg = p.background[100], fg = p.error[500] },
            error_selected = { bg = p.primary[500], fg = p.background[50] },
            error_visible = { bg = p.background[200], fg = p.error[500] },
            error_diagnostic = { bg = p.background[100], fg = p.error[500] },
            error_diagnostic_selected = { bg = p.primary[500], fg = p.background[50] },
            error_diagnostic_visible = { bg = p.background[200], fg = p.error[500] },
        },
    }

    if custom.all then
        for group, colors in pairs(custom.all) do
            if theme.background[group] then
                theme.background[group] = vim.tbl_deep_extend("force", theme.background[group], colors)
            end
        end
    end

    return theme.background
end

M.setup = function(opts)
    local palette = require('moneygazer.palette')
    return M.get_theme(palette, opts)
end

return M
