return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  config = function() 
      require("nvim-treesitter").install(
          {"lua", "vim", "vimdoc", "python", "c", "markdown", "markdown_inline", })

      vim.api.nvim_create_autocmd('FileType', {
          pattern = { '<filetype>' },
          callback = function() vim.treesitter.start() end,
      })     
  end
}
