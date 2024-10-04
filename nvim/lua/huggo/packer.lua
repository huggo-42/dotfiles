-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- use({
    --     'rose-pine/neovim',
    --     as = 'rose-pine',
    --     config = function()
    --         -- vim.cmd('colorscheme rose-pine')
    --         require("rose-pine").setup({
    --             variant = "auto", -- auto, main, moon, or dawn
    --             dark_variant = "main", -- main, moon, or dawn
    --             dim_inactive_windows = false,
    --             extend_background_behind_borders = true,
    --         
    --             enable = {
    --                 terminal = true,
    --                 legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
    --                 migrations = true, -- Handle deprecated options automatically
    --             },
    --         
    --             styles = {
    --                 bold = true,
    --                 italic = false,
    --                 transparency = false,
    --             },
    --         
    --             groups = {
    --                 border = "muted",
    --                 link = "iris",
    --                 panel = "surface",
    --         
    --                 error = "love",
    --                 hint = "iris",
    --                 info = "foam",
    --                 note = "pine",
    --                 todo = "gold",
    --                 warn = "gold",
    --         
    --                 git_add = "foam",
    --                 git_change = "rose",
    --                 git_delete = "love",
    --                 git_dirty = "rose",
    --                 git_ignore = "muted",
    --                 git_merge = "iris",
    --                 git_rename = "pine",
    --                 git_stage = "iris",
    --                 git_text = "rose",
    --                 git_untracked = "subtle",
    --         
    --                 h1 = "iris",
    --                 h2 = "foam",
    --                 h3 = "rose",
    --                 h4 = "gold",
    --                 h5 = "pine",
    --                 h6 = "foam",
    --             },
    --         
    --             highlight_groups = {
    --                 -- Comment = { fg = "foam", bg = "muted" },
    --                 -- VertSplit = { fg = "muted", bg = "muted" },
    --             },
    --         
    --             before_highlight = function(group, highlight, palette)
    --                 -- Disable all undercurls
    --                 -- if highlight.undercurl then
    --                 --     highlight.undercurl = false
    --                 -- end
    --                 --
    --                 -- Change palette colour
    --                 -- if highlight.fg == palette.pine then
    --                 --     highlight.fg = palette.foam
    --                 -- end
    --             end,
    --         })
    --     end
    -- })
    
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context");

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }

    use("folke/zen-mode.nvim")
    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")

    use("zbirenbaum/copilot.lua")

    use {
      "unisonweb/unison",
      branch = "trunk",
      rtp = "/editor-support/vim"
    }

    use ("NvChad/nvim-colorizer.lua")
    -- use {
    --     'norcalli/nvim-colorizer.lua',
    --     config = function()
    --         require('colorizer').setup()
    --     end
    -- }

end)
