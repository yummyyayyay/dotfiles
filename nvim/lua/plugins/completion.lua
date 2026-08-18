return {
    {
        "hrsh7th/nvim-cmp",
        -- performance boost : only load the visual menu when you start typing 
        event = "InsertEnter",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp", 
        },
        config = function()
            local cmp = require("cmp")
            
            cmp.setup({
                -- 1. how the menu looks
                window = {
                    completion = cmp.config.window.bordered(),
                    documentation = cmp.config.window.bordered(),
                },

                -- 2. keyboard mapping for going through this 
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(), -- tab moves down the suggestion list 
                    ["<S-Tab"] = cmp.mapping.select_prev_item(), 
                    ["<CR>"] = cmp.mapping.confirm({ select = true }), -- enter will select stuff 
                    ["<C-Space>"] = cmp.mapping.complete(), -- ctrl + space will manually open the list
                }),

                -- 3. where the menu gets its data from 
                sources = cmp.config.sources({
                    { name = "nvim_lsp"}, -- we get them from the lsp servers 
                }),
            })
        end,
    },
}
