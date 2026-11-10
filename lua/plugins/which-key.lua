return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    preset = "helix",
    spec = {
        {"<leader>c", group = "Windows Clipboard"},
        {"<leader>e", group = "Edit File"},
        {"<leader>g", group = "Git"},
        {"<leader>t", group = "Tab"},
        {"<leader>a", group = "Claude Code"},
        {"<leader>f", group = "Telescope"},
        {"<leader>l", group = "LSP"},
    },
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
