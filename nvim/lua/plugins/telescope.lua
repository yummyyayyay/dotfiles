return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            -- activating with clean defaults 
            require("telescope").setup()
        end,
    },
}
