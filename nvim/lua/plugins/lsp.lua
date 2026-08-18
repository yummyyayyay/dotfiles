return {
    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
        
        config = function()
            -- init the core mason package installer 
            require("mason").setup()

            -- configure the bridge with the new modern auto-enable setting (need to read what this means)
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "pyright",
                    "ts_ls",
                    "gopls",
                    "rust_analyzer",
                    "clangd",
                    "jdtls"
                },

                automatic_enable = true,
            })

            -- 3. standard editor hooks (need to understand what this means)
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local bufnr = args.buf
                    -- setting up the space + ca for code solutions for errors 
                    vim.keymap.set('n','<leader>ca', vim.lsp.buf.code_action, { buffer = bufnr })
                end,
            })
        end,
    },
}
