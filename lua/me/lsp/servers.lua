return {
  -- clangd = {},
  -- gopls = {},
  -- rust_analyzer = {},
  -- ... etc. See `:help lspconfig-all` for a list of all the pre-configured LSPs
  --
  -- Some languages (like typescript) have entire language plugins that can be useful:
  --    https://github.com/pmizio/typescript-tools.nvim
  --
  -- But for many setups, the LSP (`ts_ls`) will work just fine
  -- ts_ls = {},
  --
  -- pyright = {
  --   on_attach = function(client, bufnr)
  --     -- disable the server’s formatting capability
  --     client.server_capabilities.documentFormattingProvider = false
  --     client.server_capabilities.documentRangeFormattingProvider = false
  --   end,
  -- },
  ruff = {},

  lua_ls = {
    -- cmd = {...},
    -- filetypes = { ...},
    -- capabilities = {},
    settings = {
      Lua = {
        completion = {
          callSnippet = 'Replace',
        },
        -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
        -- diagnostics = { disable = { 'missing-fields' } },
      },
    },
  },

  tinymist = {
    -- cmd = {...}
    -- filetypes = {...}
    -- capabilities = {...}
    settings = {
      formatterMode = 'typstyle',
      exportPdf = 'onType',
      semanticTokens = 'disable',
    },
  },
}
