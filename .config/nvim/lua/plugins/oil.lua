return {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    opts = {
        default_file_explorer = true,
        columns = { 'icon' },
        view_options = {
            show_hidden = true,
        },
    },
    config = function (_, opts)
        local oil = require  'oil'

        oil.setup (opts)

        vim.keymap.set ('n', '-', oil.open, { desc = 'Open parent directory with Oil' })
    end,
}
