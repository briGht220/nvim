-- neovide setup  
if vim.g.neovide then 
	--scale up/down  
    function change_scale(up)
        if up == true then
            vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1
        else 
            vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1
        end
    end

    vim.keymap.set("n", "<C-+>", function() change_scale(true) end)
    vim.keymap.set("n", "<C-->", function() change_scale(false) end)
end

-- set group edit ('e')
-- {
-- save 
vim.keymap.set("n", "<leader>es", "<cmd>w<CR>", {desc = "Save File"})

-- save and exit 
vim.keymap.set("n", "<leader>ee", "<cmd>w<CR><cmd>Ex<CR>", {desc = "Save and Explore"})
vim.keymap.set("n", "<leader>eq", "<cmd>wq<CR>", {desc = "Save and Quit"})

-- force exit  
vim.keymap.set("n", "<leader>eE", "<cmd>Ex!<CR>", {desc = "Force Explore"})
vim.keymap.set("n", "<leader>eQ", "<cmd>q!<CR>", {desc = "Force Quit"})
-- }
-- edit end 

-- set windows clipboard  
-- {
vim.keymap.set("x", "<leader>cc", "\"+y", {desc = "Copy to Clipboard"})
vim.keymap.set({"x", "n"}, "<leader>cC", ":%y+<CR>", {desc = "Copy All to Clipboard"})
vim.keymap.set({"x", "n"}, "<leader>cp", "\"+p", {desc = "Paste from Clipboard"})
-- }
-- clipboard end
