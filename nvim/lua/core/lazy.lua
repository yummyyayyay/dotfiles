-- setting up the lazy.nvim for managing plugins 

-- 1. finding the installation path for lazy.vim 

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- 2. if lazy.nvim is not downloaded yet , pull it from github 
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }) 
    if vim.v.shell_error ~= 0 then 
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out, "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end 


-- 3. Prepend lazy to neovim's runtime path 
vim.opt.rtp:prepend(lazypath)

-- 4. Init lazy.nvim and we are gonna ask it to look inside the plugins floder 
require("lazy").setup({
    spec = {
        -- This string will tell lazy to load any file inside the lua/plugins
        { import = "plugins" },
    },
    -- use the stable plugin versions 
    checker = { enabled = false },
}) 
