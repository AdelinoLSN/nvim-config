return {
  "neovim/nvim-lspconfig",

  config = function()
    vim.lsp.enable("ts_ls")

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, {
            buffer = event.buf,
            desc = desc,
          })
        end

        map("gd", vim.lsp.buf.definition, "Go to Definition")
        map("gD", vim.lsp.buf.declaration, "Go to Declaration")
        map("gr", vim.lsp.buf.references, "Go to References")
        map("gi", vim.lsp.buf.implementation, "Go to Implementation")
        map("K", vim.lsp.buf.hover, "Hover Documentation")

        map("<leader>rn", vim.lsp.buf.rename, "Rename Symbol")
        map("<leader>ca", vim.lsp.buf.code_action, "Code Actions")
      end,
    })
  end,
}
