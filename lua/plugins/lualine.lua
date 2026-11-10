return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
        options = {
            theme = "auto",
            globalstatus = true,
        },
        tabline = {
            lualine_a = {{ "tabs", mode = 2, max_length = vim.o.columns },},
        },
    },
}
