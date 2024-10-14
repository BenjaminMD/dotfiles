return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require'nvim-treesitter.configs'.setup({
            ensure_installed = "all",
            highlight = {
                -- ...
            },
            -- ...
            rainbow = {
              enable = true,
              extended_mode = true,
              max_file_lines = nil,
            }
        })
    end,
} 
