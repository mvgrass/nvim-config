vim.g.mapleader = " "

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

--Neotree
vim.keymap.set('n', '<leader>e', ':Neotree toggle reveal<CR>')

vim.keymap.set('n', '|', ':vsplit<CR>')
vim.keymap.set('n', '-', ':split<CR>')

vim.keymap.set('n', '<c-s>', ':w<CR>')

--Outline
vim.keymap.set('n', '<leader>o', ':Outline<CR>')  

--DiffView
vim.keymap.set('n', '<leader>dv', ':DiffviewOpen<CR>')
vim.keymap.set('n', '<leader>dc', ':DiffviewCle<CR>')

--BufferLine
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>')
vim.keymap.set('n', '<s-Tab>', ':BufferLineCyclePrev<CR>')
vim.keymap.set('n', '<leader>x', ':BufferLinePickClose<CR>')
vim.keymap.set('n', '<leader>gt', ':BufferLinePick<CR>')

