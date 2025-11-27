vim.g.mapleader = ' '

vim.keymap.set ('i', 'jk', '<ESC>', { desc = 'Exit insert mode with jk' })
vim.keymap.set ('i', 'jj', '<ESC>', { desc = 'Exit insert mode with jj' })

vim.keymap.set ('n', '<leader>+', '<C-a>', { desc = 'Increment number' })
vim.keymap.set ('n', '<leader>-', '<C-x>', { desc = 'Decrement number' })

vim.keymap.set ('n', '<leader>sv', '<C-w>v', { desc = 'Split window vertically' })
vim.keymap.set ('n', '<leader>sh', '<C-w>s', { desc = 'Split window horizontally' })
vim.keymap.set ('n', '<leader>se', '<C-w>=', { desc = 'Make splits equal size' })
vim.keymap.set ('n', '<leader>sx', '<cmd>close<cr>', { desc = 'Close current split' })

vim.keymap.set ('n', '<leader>to', '<cmd>tabnew<cr>', { desc = 'Open new tab' })
vim.keymap.set ('n', '<leader>tx', '<cmd>tabclose<cr>', { desc = 'Close current tab' })
vim.keymap.set ('n', '<leader>tn', '<cmd>tabn<cr>', { desc = 'Go to next tab' })
vim.keymap.set ('n', '<leader>tp', '<cmd>tabp<cr>', { desc = 'Go to previous tab' })
vim.keymap.set ('n', '<leader>tf', '<cmd>tabnew %<cr>', { desc = 'Open current file in new tab' })
