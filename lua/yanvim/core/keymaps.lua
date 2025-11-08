local map = vim.keymap.set

-- File operations
map('n', '<leader>ya', '<cmd>%y+<cr>', { desc = 'Yank entire file' })
map('n', '<leader>w', '<cmd>w<cr>', { desc = 'Save file', silent = true })
map('n', '<leader>q', '<cmd>q<cr>', { desc = 'Quit', silent = true })
map('n', '<leader>wq', '<cmd>wq<cr>', { desc = 'Save and quit', silent = true })

-- Clear search highlight
map('n', '<esc>', '<cmd>nohlsearch<cr>')
