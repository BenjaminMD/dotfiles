return require('packer').startup(function(use)
   use 'wbthomason/packer.nvim'

   use {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require "configs.hop"
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end
    }

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = { {'nvim-lua/plenary.nvim'} },
        config = function() require "configs.telescope" end
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        config = function() require "configs.treesitter" end
    }

    use{
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require "configs.rosepine"
            vim.cmd('colorscheme rose-pine')
        end
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
        config = function() require 'lualine'.setup {
              options = {
                icons_enabled = true,
                theme = 'auto',
                component_separators = { left = '', right = ''},
                section_separators = { left = '', right = ''},
                disabled_filetypes = {
                  statusline = {},
                  winbar = {},
                },
                ignore_focus = {},
                always_divide_middle = true,
                globalstatus = false,
                refresh = {
                  statusline = 1000,
                  tabline = 1000,
                  winbar = 1000,
                }
              },
              sections = {
                lualine_a = {'mode'},
                lualine_b = {'branch', 'diff', 'diagnostics'},
                lualine_c = {'filename'},
                lualine_x = {'encoding', 'fileformat', 'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
              },
              inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
              },
              tabline = {},
              winbar = {},
              inactive_winbar = {},
              extensions = {}
            } end
        } 
    use {   
        'lukas-reineke/indent-blankline.nvim',
        config = function() require("indent_blankline").setup {
            space_char_blankline = " ",
            show_current_context = true,
            show_current_context_start = true,
        } end
    }

  
    use {
        'ggandor/lightspeed.nvim',
        config = function() require"lightspeed".setup{
            substitute_chars = { ['\r'] = '¬', },
        } end
    }
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'lervag/vimtex'
    use 'tpope/vim-surround'
end)
