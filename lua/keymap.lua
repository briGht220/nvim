-- neovide setup  
-- {
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
-- } neovide setup end  

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
-- } edit end 

-- set windows clipboard  
-- {
vim.keymap.set("x", "<leader>cc", "\"+y", {desc = "Copy to Clipboard"})
vim.keymap.set({"x", "n"}, "<leader>cC", "<cmd>%y+<CR>", {desc = "Copy All to Clipboard"})
vim.keymap.set({"x", "n"}, "<leader>cp", "\"+p", {desc = "Paste from Clipboard"})
-- } clipboard end

-- set tab  
-- {
vim.keymap.set("n", "<leader>tn", "<cmd>tabnew<CR>", {desc = "New Tab"})  
vim.keymap.set("n", "<leader>tw", "<cmd>tabclose<CR>", {desc = "Close Tab"})  
-- } tab end

-- set terminal   
-- {
-- terminal to normal  
vim.keymap.set("t", "<C-q>", [[<C-\><C-n>]], {desc = "Exit Terminal mode"})
-- } terminal end

-- open Lazygit 
-- {
local function lazygit_tab()
  vim.cmd("tabnew")
  local buf = vim.api.nvim_get_current_buf()

  local opts = {
    on_exit = function()
      vim.schedule(function()
        if vim.api.nvim_buf_is_valid(buf) then
          vim.api.nvim_buf_delete(buf, { force = true })
        end
      end)
    end,
  }

  if vim.fn.has("nvim-0.11") == 1 then
    opts.term = true
    vim.fn.jobstart("lazygit", opts)
  else
    vim.fn.termopen("lazygit", opts)
  end

  vim.api.nvim_create_autocmd("BufWinLeave", {
    buffer = buf,
    once = true,
    callback = function()
      pcall(vim.fn.jobstop, job)
    end,
  })

  vim.cmd("startinsert")
end

vim.keymap.set("n", "<leader>gg", lazygit_tab, { desc = "LazyGit" })
-- }

-- terminal copy  
-- {
vim.keymap.set("t", "<C-S-v>", function() vim.api.nvim_paste(vim.fn.getreg("+"), true, -1) end)
-- }
