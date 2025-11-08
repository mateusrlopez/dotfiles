return {
    'mfussenegger/nvim-lint',
    event = { 'BufReadPre', 'BufNewFile' },
    config = function ()
        local lint = require  'lint'

        lint.linters_by_ft = {
            javascript = { 'eslint_d' },
            typescript = { 'eslint_d' },
            javascriptreact = { 'eslint_d' },
            typescriptreact = { 'eslint_d' },
            vue = { 'eslint_d' },
            go = { 'golangcilint' },
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
