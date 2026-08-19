vim.opt.number = true
vim.opt.relativenumber = true -- setting relative numbers to true 
vim.opt.mouse = 'a' -- not sure , gemini says this will allow mouse clicks and scroll 
vim.opt.clipboard = 'unnamedplus' -- allows us to copy the nvim stuff to the system clipboard 
vim.opt.termguicolors = true -- enables colors in the terminal 

-- setting up the space rules 

vim.opt.tabstop = 4 -- tabstop is set to 4 spaces now 
vim.opt.shiftwidth = 4 -- size of an automatic indent is also 4 now 
vim.opt.expandtab = true -- converts tabs into spaces 
vim.opt.smartindent = true -- need to look up , turns on lang aware indent 

-- making sure that the sign column is always on , else it keeps shifting 
vim.opt.signcolumn = "yes"
