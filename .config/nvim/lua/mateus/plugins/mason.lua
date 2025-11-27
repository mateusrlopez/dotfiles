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
                'vue_ls',
                'emmet_ls',
                'tailwindcss',
                'gopls',
                'yamlls',
                'html',
                'cssls',
                'dockerls',
                'biome',
                'jsonls',
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
                'stylua',
                'golangci-lint',
                'goimports',
            },
        },
        dependencies = {
            'mason-org/mason.nvim',
        },
    },
}
