-- writing keymaps here 
--

-- ctrl + left mouse click will take use to the method definition 
vim.keymap.set('n', '<C-LeftMouse>', '<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>', { silent = true }) 


-- going backword and forward in navigation history 
-- space + o to jump backward and space + i to jump forward 
vim.keymap.set('n', '<leader>o', '<C-o>', { silent = true })
vim.keymap.set('n', '<leader>i', '<C-i>', { silent = true })


-- project wide search : type gr on a function name to look up its references 
vim.keymap.set('n', 'gr', vim.lsp.buf.references, { silent = true })

-- Toggle the sidebar File Tree ( don't know what exactly this does , but lets ask about this later, it uses space + b) 

vim.keymap.set('n', '<leader>b', ':NvimTreeToggle<CR>', { silent = true })

-- keymap for the lazy 
vim.keymap.set('n', '<leader>l', '<cmd>Lazy<CR>', { silent = true})

-- keymap for Mason (don't think I need this but why not ? in future if something else comes up I will remap leader + M to it)
vim.keymap.set('n', '<leader>m', '<cmd>Mason<CR>', { silent = true })

-- keymap for the error panel 
vim.keymap.set('n', '<leader>d', '<cmd>Telescope diagnostics<CR>', { silent = true })

-- fast file search keybinds 
vim.keymap.set('n','<leader>f', '<cmd>Telescope find_files<CR>', { silent = true })

-- fast keyword search keybind 
vim.keymap.set('n', '<leader>s', '<cmd>Telescope live_grep<CR>', { silent = true})
