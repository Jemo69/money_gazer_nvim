local M = {}

function M.setup()
    -- Clear highlights
    vim.cmd('highlight clear')
    if vim.fn.exists('syntax_on') then
        vim.cmd('syntax reset')
    end

    -- Set colorscheme name
    vim.g.colors_name = 'moneygazer'

    -- Load palette and groups
    local palette = require('moneygazer.palette')
    local groups = require('moneygazer.groups')

    -- Set highlight groups
    groups.setup(palette)
end

return M