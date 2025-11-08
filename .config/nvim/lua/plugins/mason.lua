return {
    {
        'mason-org/mason.nvim',
        opts = {
            ui = {
                icons = {
                    package_installed = '',
                    package_pending = '',
                    package_uninstalled = '',
                },
            },
        },
    },
    {
        'mason-org/mason-lspconfig.nvim',
        opts = {
            ensure_installed = {
                'lua_ls',
                'ts_ls',
                'eslint',
                'emmet_language_server',
                'tailwindcss',
                'gopls',
                'ruby_lsp',
                'yamlls',
                'html',
                'cssls',
                'vue_ls',
                'dockerls',
            },
        },
        dependencies = {
            'mason-org/mason.nvim',
            'neovim/nvim-lspconfig',
        },
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        opts = {
            ensure_installed = {
                'prettier',
                'eslint_d',
                'stylua',
                'golangci-lint',
                'goimports',
                'rubocop',
            },
        },
        dependencies = {
            'mason-org/mason.nvim',
        },
    },
}
