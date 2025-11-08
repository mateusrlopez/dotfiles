return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    config = function ()
        local telescope = require  'telescope'
        local builtin = require  'telescope.builtin'
        local actions = require  'telescope.actions'

        telescope.setup  {
            defaults = {
                path_display = { 'smart' },
                mappings = {
                    i = {
                        ['<C-k>'] = actions.move_selection_previous,
                        ['<C-j>'] = actions.move_selection_next,
                    },
                },
            },
        }

        telescope.load_extension  'fzf'

        vim.keymap.set ('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files in cwd' })
        vim.keymap.set ('n', '<leader>fr', builtin.oldfiles, { desc = 'Telescope find recently opened files' })
        vim.keymap.set ('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
        vim.keymap.set ('n', '<leader>fc', builtin.grep_string, { desc = 'Find string under cursor in cwd' })
        vim.keymap.set ('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
    end,
}
