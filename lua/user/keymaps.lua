-- local nnoremap = require('user.keymap_utils').nnoremap
-- local vnoremap = require('user.keymap_utils').vnoremap
-- local inoremap = require('user.keymap_utils').inoremap
-- local tnoremap = require('user.keymap_utils').tnoremap
-- local xnoremap = require('user.keymap_utils').xnoremap
--local ui = require 'harpoon.ui'
--local mark = require 'harpoon.mark'

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

-- Oil:
vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- Harpoon

-- Open harpoon ui
-- nnoremap('<leader>ho', function()
--   ui.toggle_quick_menu()
-- end)
--
-- -- Add current file to harpoon
-- nnoremap('<leader>ha', function()
--   mark.add_file()
-- end)
--
-- -- Remove current file from harpoon
-- nnoremap('<leader>hr', function()
--   mark.rm_file()
-- end)
--
-- -- Remove all files from harpoon
-- nnoremap('<leader>hc', function()
--   mark.clear_all()
-- end)
--
-- -- Quickly jump to harpooned files
-- nnoremap('<leader>1', function()
--   ui.nav_file(1)
-- end)
--
-- nnoremap('<leader>2', function()
--   ui.nav_file(2)
-- end)
--
-- nnoremap('<leader>3', function()
--   ui.nav_file(3)
-- end)
--
-- nnoremap('<leader>4', function()
--   ui.nav_file(4)
-- end)
--
-- nnoremap('<leader>5', function()
--   ui.nav_file(5)
-- end)
