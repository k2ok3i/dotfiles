return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local status, treesitter = pcall(require, "nvim-treesitter.configs")
        if (not status) then return end

        treesitter.setup {
            -- ignore_install = { "html" },
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false, -- catpuucin用
                disable = {},
            },
            indent ={
                enable =true,
                disable ={"html"},
            },
            autotag = {
                enable = true,
            },
        }
    end,
}