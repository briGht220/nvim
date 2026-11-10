return {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    opts = {
        explorer = {
            view_mode = "tree",
        },
    },
    keys = {
        { "<leader>gd", "<cmd>CodeDiff<CR>", desc = "CodeDiff Open", mode = "n" }, 
        { "<leader>gH", "<cmd>CodeDiff origin/HEAD<CR>", desc = "CodeDiff Compare with origin/HEAD", mode = "n" }, 
    },
}
