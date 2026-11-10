return {
    "neovim/nvim-lspconfig",
    event = {"BufReadPre", "BufNewFile"},
    config = function()
      vim.lsp.config("clangd", {
        cmd = { "clangd", "--background-index", "--clang-tidy" },
      })
      vim.lsp.enable("clangd")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local opts = { buffer = args.buf }
          vim.keymap.set("n", "<leader>ld", vim.lsp.buf.definition, { buffer = args.buf, desc = "Goto Definition"})
          vim.keymap.set("n", "<leader>lD", vim.lsp.buf.declaration, { buffer = args.buf, desc = "Goto Declaration"})
          vim.keymap.set("n", "<leader>lr", vim.lsp.buf.rename, { buffer = args.buf, desc = "Rename"})
          vim.keymap.set("n", "<leader>lR", vim.lsp.buf.references, { buffer = args.buf, desc = "Find References"})
        end,
      })
    end,
}

