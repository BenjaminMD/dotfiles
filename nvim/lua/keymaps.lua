local opts = {
	noremap = true, -- non-recursive
	silent = true, -- do not show message
}

local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
keymap("", "<Space>", "<Nop>", opts)

keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

local function save_and_quit()
	vim.cmd("w")
	vim.cmd("q")
end
vim.api.nvim_create_user_command("Wq", save_and_quit, {})
