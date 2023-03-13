return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    use {
        'phaazon/hop.nvim',
        branch = 'v2',
        config = function()
            require "configs.hop"
            require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' } end
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
  
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin
    use 'lervag/vimtex'
end)
