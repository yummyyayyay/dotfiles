-- defining the map leader here since lazy is loading before the keymaps and uses the leader
vim.g.mapleader = " "

require("core.lazy")
require("core.options")
require("core.keymaps")
