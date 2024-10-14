require("options")
require("keymaps")
require("loadlazy")
vim.cmd([[colorscheme tokyonight]])
vim.g.python3_host_prog = "/usr/local/Caskroom/miniconda/base/envs/12/bin/python3.12"

vim.diagnostic.config({
	virtual_text = false,
})

vim.o.foldcolumn = "1" -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)

-- Option 3: treesitter as a main provider instead
-- Only depend on `nvim-treesitter/queries/filetype/folds.scm`,
-- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "treesitter", "indent" }
	end,
})
--

-- Option 4: disable all providers for all buffers
-- Not recommend, AFAIK, the ufo's providers are the best performance in Neovim
require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return ""
	end,
})

vim.api.nvim_set_keymap("i", ",,", "<esc>:keepp /<++><CR>ca<", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", ",,", ":keepp /<++><CR>ca<", { noremap = true, silent = true })

vim.keymap.set("", "<Leader>l", require("lsp_lines").toggle, { desc = "Toggle lsp_lines" })
