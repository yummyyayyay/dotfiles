return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            -- Fix , call setup directly from nvim-treesitter instead of .configs
            require("nvim-treesitter").setup({
                ensure_installed = { "lua", "python", "javascript", "java", "c", "c++", "typescriipt", "go", "rust", "markdown"}, 

                highlight = {
                    enable = true,
                    additional_vim_regex_hightlighting = false,
                },
            })
        end,
    },
}
