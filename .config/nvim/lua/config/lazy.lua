local lazypath = vim.fn.stdpath  'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat (lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    local out = vim.fn.system  { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo ({
            { 'Failed to clone lazy.nvim:\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
            { '\nPress any key to exit...' },
        }, true, {})
        vim.fn.getchar ()
        os.exit (1)
    end
end
vim.opt.rtp:prepend (lazypath)

local lazy = require  'lazy'

lazy.setup  {
    spec = {
        { import = 'plugins' },
    },
    ui = {
        rounded = true,
    },
    checker = {
        enabled = true,
        notify = false,
    },
    change_detection = {
        notify = false,
    },
}

vim.keymap.set ('n', '<leader>lh', lazy.home, { desc = 'Open Lazy.nvim menu' })
vim.keymap.set ('n', '<leader>li', lazy.install, { desc = 'Install Lazy.nvim plugins' })
vim.keymap.set ('n', '<leader>lu', lazy.update, { desc = 'Update Lazy.nvim plugins' })
vim.keymap.set ('n', '<leader>ls', lazy.sync, { desc = 'Synchronize Lazy.nvim plugins' })
vim.keymap.set ('n', '<leader>lx', lazy.clean, { desc = 'Remove unused Lazy.nvim plugins' })
