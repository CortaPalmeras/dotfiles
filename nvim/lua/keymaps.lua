
-- General
vim.keymap.set('n', '<esc>', vim.cmd.nohlsearch, { desc = 'Clean search' })
vim.keymap.set('n', '<leader>L', '<cmd>Lazy<cr>', { desc = 'Lazy Panel' })
vim.cmd('cab S %s')

-- Movement
vim.keymap.set('', '<C-j>', '4j')
vim.keymap.set('', '<C-k>', '4k')

vim.keymap.set('', '<C-n>', '8j')
vim.keymap.set('', '<C-p>', '8k')

vim.keymap.set('', '<C-h>', '20h')
vim.keymap.set('', '<C-l>', '20l')

vim.keymap.set('', '¿', '^')

-- Insert
vim.keymap.set('i', '<C-CR>', '<esc>o')
vim.keymap.set('i', '<S-CR>', '<esc>O')

-- Windows
vim.keymap.set('n', '<M-h>', '<C-w>h')
vim.keymap.set('n', '<M-j>', '<C-w>j')
vim.keymap.set('n', '<M-k>', '<C-w>k')
vim.keymap.set('n', '<M-l>', '<C-w>l')

-- Tabs
vim.keymap.set('n', '<leader>tt', '<cmd>tabnew<cr>',      { desc = 'New tab' })
vim.keymap.set('n', '<leader>tc', '<cmd>tabclose<cr>',    { desc = 'Close tab' })
vim.keymap.set('n', '<leader>tp', '<cmd>tabprevious<cr>', { desc = 'Previous tab' })
vim.keymap.set('n', '<leader>tn', '<cmd>tabnext<cr>',     { desc = 'Next tab' })

-- Buffers
vim.keymap.set('n', '<leader>bp', '<cmd>bprevious<cr>', { desc = 'Previous buffer' })
vim.keymap.set('n', '<leader>bn', '<cmd>bnext<cr>',     { desc = 'Next buffer' })
vim.keymap.set('n', '<leader>bm', '<cmd>bmodified<cr>', { desc = 'Modified buffer' })
vim.keymap.set('n', '<leader>bd', '<cmd>bdelete<cr>',   { desc = 'Delete buffer' })

-- Write
vim.keymap.set('n', '<leader>w', '<cmd>up<cr>', { desc = 'Write current' })
vim.keymap.set('n', '<leader>a', '<cmd>wa<cr>', { desc = 'Write All' })
vim.keymap.set('n', '<leader>q', '<cmd>wq<cr>', { desc = 'Quit' })

