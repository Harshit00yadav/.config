vim.g.mapleader = " "
local keymap = vim.keymap -- for conciseness

-- general keymaps
keymap.set("n", "<leader>sv", "<C-w>v") -- split window virtically
keymap.set("n", "<leader>ss", "<C-w>s") -- split window Horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- makes split window equal size
keymap.set("n", "<leader>sx", ":close<CR>") -- close split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
