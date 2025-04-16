return {
    -- "EdenEast/nightfox.nvim",
    -- config = function()
    --     vim.o.background = 'dark'
    --     require('nightfox').setup({
    --         options = {
    --             styles = {
    --                 comments = "italic",
    --                 keywords = "bold",
    --                 types = "italic,bold",
    --             }
    --         }
    --     })
    --     vim.cmd("colorscheme carbonfox")
    -- end,

    -- "rebelot/kanagawa.nvim",
    -- config = function()
    --    require('kanagawa').setup({
    --        keywordStyle = { bold = true },
    --        typeStyle = { italic = true, bold = true },
    --        transparent = true,
    --    })
    --    vim.cmd("colorscheme kanagawa-dragon")
    --end,

    -- "folke/tokyonight.nvim",
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
    -- config = function()
    --     vim.cmd("colorscheme tokyonight-moon")
    -- end,

    -- 'navarasu/onedark.nvim',
    -- lazy = false,
    -- priority = 1000,
    -- opts = {},
    -- config = function()
    --     require('onedark').setup {
    --         style = 'darker',
    --         transparent = true,
    --     }
    --     vim.cmd("colorscheme onedark")
    -- end,
    --
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
            styles = {
                comments = { "italic" },
                keywords = { "bold" },
                types = { "italic", "bold" },
            },
            default_integrations = true,
            integrations = {
                cmp = true,
                lsp_saga = true,
                nvimtree = true,
                treesitter = true,
                noice = true,
                notify = true,
            }
        })

        vim.cmd("colorscheme catppuccin")
    end,
}
