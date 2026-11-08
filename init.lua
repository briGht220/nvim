if vim.g.neovide then 
    vim.print(vim.g.neovide_version)
end

-- set leader 
vim.g.mapleader = " "

require("setup")
require("keymap")
require("config.lazy")
