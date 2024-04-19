vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Move between buffers using <Shift> hl keys
if pcall(require, "bufferline.nvim") then
	vim.keymap.set(
		"n",
		"<S-h>",
		"<cmd>BufferLineCyclePrev<cr>",
		{ desc = "Previous buffer", noremap = true, silent = true }
	)
	vim.keymap.set(
		"n",
		"<S-l>",
		"<cmd>BufferLineCycleNext<cr>",
		{ desc = "Next buffer", noremap = true, silent = true }
	)
else
	vim.keymap.set("n", "<S-h>", "<cmd>bprev<cr>", { desc = "Previous buffer", silent = true })
	vim.keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next buffer", silent = true })
end

-- Move selected text up and down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Up
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Down

-- Keep cursor in the center when scrolling
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Helix-like g-prefixed maps
vim.keymap.set("n", "gh", "0", { desc = "Goto line start" })
vim.keymap.set("n", "gl", "$", { desc = "Goto line end" })
vim.keymap.set("n", "gs", "^", { desc = "Goto first non-whitespace character" })

-- Lazy
vim.keymap.set("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Insert lines above/below without leaving normal mode
vim.keymap.set("n", "oo", "o<Esc>k", opts)
vim.keymap.set("n", "OO", "O<Esc>j", opts)
