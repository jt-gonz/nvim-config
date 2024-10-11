-- Set <space> as the leader key
-- See `:help mapleader`
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<cr>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = 'Open diagnostic' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
vim.keymap.set({ 'n', 'i' }, '<C-h>', '<Esc><C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set({ 'n', 'i' }, '<C-l>', '<Esc><C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set({ 'n', 'i' }, '<C-j>', '<Esc><C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set({ 'n', 'i' }, '<C-k>', '<Esc><C-w><C-k>', { desc = 'Move focus to the upper window' })

-- vim.keymap.set('n', '<leader>ew', vim.cmd.Ex, { desc = 'Open Netwr Menu' })

vim.keymap.set('n', '<Tab><Tab>', '<cmd>tabnew<cr>', { desc = 'Create new tab' })
vim.keymap.set('n', '[t', '<cmd>tabp<cr>', { desc = 'Move to previous tab' })
vim.keymap.set('n', ']t', '<cmd>tabN<cr>', { desc = 'Move to next tab' })
vim.keymap.set('n', '<leader>tc', '<cmd>tabclose<cr>', { desc = 'Close tab' })

vim.keymap.set('n', '|', '<cmd>vsplit<cr> <c-w>l')
vim.keymap.set('n', '\\', '<cmd>split<cr> <c-w>j')
vim.keymap.set('n', '<leader>th', [[<cmd>bel split | res 13 | terminal<cr>]])
