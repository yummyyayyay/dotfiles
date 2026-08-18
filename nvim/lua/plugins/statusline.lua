return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          icons_enabled = true,
          component_separators = { left = '', right = '' }, -- Removes confusing dividing bars
          section_separators = { left = '', right = '' },   -- Removes angled visual blocks
        },
        sections = {
          -- Left Side: Shows your current mode (Normal, Insert) and active Git branch name
          lualine_a = { 'mode' },
          lualine_b = { 'branch' },
          lualine_c = { 'filename' },

          -- Right Side: Stripped clean of encoding (UTF-8), OS icons, and language tags
          lualine_x = {}, -- REMOVED: Filetype and encoding text
          lualine_y = {}, -- REMOVED: Progress bars or OS icons
          
          -- Keeps ONLY the LSP error/warning count and your exact line number location
          lualine_z = { 'diagnostics', 'location' },
        },
      })
    end,
  }
}
