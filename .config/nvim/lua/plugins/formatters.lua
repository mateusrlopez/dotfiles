return {
    'stevearc/conform.nvim',
    event = { 'BufReadPre', 'BufNewFile' },
    opts = {
        formatters_by_ft = {
            lua = { 'stylua' },
            javascript = { 'prettier', 'biome' },
            typescript = { 'prettier', 'biome' },
            javascriptreact = { 'prettier', 'biome' },
            typescriptreact = { 'prettier', 'biome' },
            json = { 'biome' },
            vue = { 'prettier', 'biome' },
            go = { 'goimports' },
            ruby = { 'rubocop' },
        },
        format_on_save = {
            lsp_fallback = true,
            async = false,
            timeout_ms = 3000,
        },
    },
    config = function (_, opts)
        local conform = require  'conform'

        conform.setup (opts)

        vim.keymap.set ({ 'n', 'v' }, '<leader>rf', function ()
            conform.format  {
                lsp_fallback = true,
                async = false,
                timeout_ms = 1000,
            }
        end, { desc = 'Run formatter on file or range (in visual mode)' })
    end,
}
