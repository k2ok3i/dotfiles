return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
        { 'nvim-tree/nvim-web-devicons' },
        { 'catppuccin/nvim' },
    },
    config = function()
        local mocha = require("catppuccin.palettes").get_palette "mocha"
        require("bufferline").setup {
            highlights = require("catppuccin.groups.integrations.bufferline").get(),
            options = {
                separator_style = "thin",
                -- indicator = {
                --     style = "underline",
                -- }
                diagnostics = "nvim_lsp",
            }
        }
    end,
}
