-- test a
vim.g.mapleader = " "
vim.cmd([[
    set colorcolumn=80 
    set tabstop=4
    set shiftwidth=4
    set expandtab 
    set number
    set relativenumber
    set clipboard=unnamedplus
    set wrap
    set linebreak
    set showbreak=..
    set wrapmargin=2
]])

require('plugins')
require'lspconfig'.pyright.setup{}
require('configs.lsp')

if vim.g.neovide == true then
  vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.01<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.01<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end
