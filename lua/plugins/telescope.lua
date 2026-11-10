return {
    "nvim-telescope/telescope.nvim", 
    version = "*",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- optional but recommended
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    opts = function() 
        return { defaults = require("telescope.themes").get_dropdown({})}
    end,
    keys = {
        {"<leader>f", nil, desc = "Telescope"},
        {"<leader>ff", function() vim.cmd("Telescope find_files") end, desc = "Find Files", mode = "n"},
        {"<leader>f/", function() vim.cmd("Telescope current_buffer_fuzzy_find") end, desc = "Live Grep Current Buffer", mode = "n"},
        {"<leader>fg", function() vim.cmd("Telescope live_grep") end, desc = "Live Grep", mode = "n"},
        {"<leader>fb", function() vim.cmd("Telescope buffers") end, desc = "Buffers", mode = "n"},
        {"<leader>fl", function() vim.cmd("Telescope lsp_document_symbols") end, desc = "LSP Document Symbols", mode = "n"},
        {"<leader>fh", function() vim.cmd("Telescope help_tags") end, desc = "Help Tags", mode = "n"},
    },
} 
