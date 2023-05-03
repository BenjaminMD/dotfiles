-- test a
vim.g.mapleader = " "
vim.cmd([[
    set colorcolumn=80 
    set tabstop=4
    set shiftwidth=4
    set expandtab 
    set number
    set relativenumber
    set smartindent
    set clipboard=unnamedplus
    set wrap
    set linebreak
    set showbreak=..
    set wrapmargin=2
    set scrolloff=8
    set signcolumn=yes
]])



--vim.opt.hlsearch = false
vim.opt.incsearch = true

require('plugins')
require'lspconfig'.pyright.setup{}
require('configs.lsp')

if vim.g.neovide == true then
  vim.api.nvim_set_keymap("n", "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>", { silent = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>", { silent = true })
end
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", { silent = true })
vim.api.nvim_set_keymap("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.g.copilot_no_tab_map = true
vim.g.copilot_assume_mapped = true
vim.g.jukit_shell_cmd = 'conda activate py311 && ipython3'


vim.cmd([[
    highlight ColorColumn ctermbg=0 guibg=#212f3d
]])



-- remaps
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("x", "<leader>p", [["_dP]])
--


