return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            {"williamboman/mason.nvim"},
            {"neovim/nvim-lspconfig"},
            {'hrsh7th/cmp-nvim-lsp'},
        },
        config = function()
            local on_attach = function(client, bufnr)
                client.server_capabilities.documentFormattingProvider = false
            end
            local capabilities = require("cmp_nvim_lsp").default_capabilities()

            require("mason-lspconfig").setup()
            require("mason-lspconfig").setup_handlers {
                function (server_name) -- default handler (optional)
                require("lspconfig")[server_name].setup {
                    on_attach = on_attach, --keyバインドなどの設定を登録
                    capabilities = capabilities, --cmpを連携
                }
                end,
                ["pylsp"] = function()
                    require'lspconfig'.pylsp.setup{
                        settings = {
                            pylsp = {
                                plugins = {
                                    pycodestyle = {
                                        ignore = {'E221', 'E501', 'E225', 'W293'},
                                    }
                                }
                            }
                        }
                    }
                end
            }
        end,
    }
}