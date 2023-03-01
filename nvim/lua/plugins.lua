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

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            require "configs.rosepine"
            vim.cmd('colorscheme rose-pine')
        end
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},             -- Required
            {'williamboman/mason.nvim'},           -- Optional
            {'williamboman/mason-lspconfig.nvim'}, -- Optional

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},         -- Required
            {'hrsh7th/cmp-nvim-lsp'},     -- Required
            {'hrsh7th/cmp-buffer'},       -- Optional
            {'hrsh7th/cmp-path'},         -- Optional
            {'saadparwaiz1/cmp_luasnip'}, -- Optional
            {'hrsh7th/cmp-nvim-lua'},     -- Optional

            -- Snippets
            {'L3MON4D3/LuaSnip'},             -- Required
            {'rafamadriz/friendly-snippets'}, -- Optional
        },
        require "configs.lsp"
}
end)
