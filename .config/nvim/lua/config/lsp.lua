vim.api.nvim_create_autocmd ('LspAttach', {
    group = vim.api.nvim_create_augroup ('UserLspConfig', {}),
    callback = function (ev)
        vim.keymap.set ('n', 'gD', vim.lsp.buf.declaration, { desc = 'Go to declaration', buffer = ev.buf })
        vim.keymap.set (
            { 'n', 'v' },
            '<leader>ca',
            vim.lsp.buf.code_action,
            { desc = 'Show available code actions', buffer = ev.buf }
        )

        vim.keymap.set (
            'n',
            '<leader>D',
            '<cmd>Telescope diagnostics bufnr=0<CR>',
            { desc = 'Show buffer diagnostics', buffer = ev.buf }
        )
        vim.keymap.set ('n', '<leader>d', vim.diagnostic.open_float, { desc = 'Show line diagnostics', buffer = ev.buf })

        vim.keymap.set ('n', '[d', function ()
            vim.diagnostic.jump  { count = -1, float = true }
        end, { desc = 'Go to previous diagnostic', buffer = ev.buf })
        vim.keymap.set ('n', ']d', function ()
            vim.diagnostic.jump  { count = 1, float = true }
        end, { desc = 'Go to next diagnostic', buffer = ev.buf })

        vim.keymap.set (
            'n',
            'K',
            vim.lsp.buf.hover,
            { desc = 'Show documentation for what is under the cursor', buffer = ev.buf }
        )
    end,
})

vim.diagnostic.config  {
    signs = {
        text = {
            [vim.diagnostic.severity.ERROR] = '',
            [vim.diagnostic.severity.WARN] = '',
            [vim.diagnostic.severity.HINT] = '',
            [vim.diagnostic.severity.INFO] = '',
        },
    },
}
