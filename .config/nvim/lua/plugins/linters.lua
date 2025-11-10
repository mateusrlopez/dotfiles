return {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function ()
        local lint = require  'lint'

        lint.linters_by_ft = {
            javascript = { 'eslint_d', 'biomejs' },
            typescript = { 'eslint_d', 'biomejs' },
            javascriptreact = { 'eslint_d', 'biomejs' },
            typescriptreact = { 'eslint_d', 'biomejs' },
            json = { 'biomejs' },
            vue = { 'eslint_d', 'biomejs' },
            go = { 'golangci-lint' },
            ruby = { 'rubocop' },
        }

        local lint_augroup = vim.api.nvim_create_augroup ('lint', { clear = true })
        vim.api.nvim_create_autocmd ({ 'BufWritePost', 'BufEnter', 'InsertLeave' }, {
            group = lint_augroup,
            callback = function ()
                lint.try_lint ()
            end,
        })

        vim.keymap.set ('n', '<leader>rl', function ()
            lint.try_lint ()
        end, { desc = 'Run linters on current file' })
    end,
}
