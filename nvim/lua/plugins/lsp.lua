local lspconfig = require('lspconfig')

lspconfig.ruff.setup({
  on_attach = function(client, bufnr)
    -- Enable "Fix on Save"
    if client.name == 'ruff' then
      vim.api.nvim_create_autocmd("BufWritePre", {
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.code_action({ context = { only = { "source.fixAll" } }, apply = true })
        end,
      })
    end
  end,
})

lspconfig.basedpyright.setup({
  settings = {
    basedpyright = {
      analysis = {
        autoSearchPaths = true,
        useLibraryCodeForTypes = true,
        diagnosticMode = "openFilesOnly",
        typeCheckingMode = "standard",
        diagnosticSeverityOverrides = {
          reportUnusedImport = "none",
          reportUnusedVariable = "none",
        },
      },
    },
  },
})

