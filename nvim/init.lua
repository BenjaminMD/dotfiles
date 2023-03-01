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
]])
require('plugins')

    --    augroup Linting
    --        autocmd!
    --        autocmd FileType python compiler pylint
    --        autocmd BufWritePost *.py silent make! <afile> | silent redraw!
    --        autocmd QuickFixCmdPost [^l]* cwindow
    --    augroup END

