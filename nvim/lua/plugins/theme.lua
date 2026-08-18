
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000, -- Keep it at top priority to prevent flashing
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
        })
      -- Load the clean, dark mocha variant immediately
      vim.cmd("colorscheme catppuccin-mocha")
    end,
  },
}
