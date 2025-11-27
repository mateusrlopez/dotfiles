local vue_plugin = {
    name = '@vue/typescript-plugin',
    location = vim.fn.expand '~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server',
    languages = { 'vue' },
    configNamespace = 'typescript',
}

return {
    filetypes = {
        'javascript',
        'typescript',
        'javascriptreact',
        'typescriptreact',
        'vue',
    },
    init_options = {
        plugins = {
            vue_plugin,
        },
    },
    on_attach = function (client)
        if vim.bo.filetype == 'vue' then
            client.server_capabilities.semanticTokensProvider.full = false
        else
            client.server_capabilities.semanticTokensProvider.full = true
        end
    end,
}
