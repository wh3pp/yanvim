local map = vim.keymap.set

-- Window navigation
map('n', '<C-h>', '<C-w>h', { desc = 'Window left' })
map('n', '<C-j>', '<C-w>j', { desc = 'Window down' })
map('n', '<C-k>', '<C-w>k', { desc = 'Window up' })
map('n', '<C-l>', '<C-w>l', { desc = 'Window right' })

-- File operations
map('n', '<leader>ya', '<cmd>%y+<cr>', { desc = 'Yank entire file' })
map('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save file', silent = true })
map('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit', silent = true })
map('n', '<leader>wq', '<cmd>wq<cr>', { desc = 'Save and quit', silent = true })
