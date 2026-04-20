-- ~/.config/nvim/lua/plugins/lsp.lua
return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- DOES NOT WOKR
      -- codelens = {
      --   enabled = false,
      -- },
      -- inlay_hints = {
      --   enabled = false,
      --   exclude = { "vue" }, -- filetypes for which you don't want to enable inlay hints
      -- },
      servers = {
        ruff = {
          enabled = false, -- Disables Pyright
        },
        pyright = {
          settings = {
            pyright = {
              -- Disable ALL type-checking (not recommended)
              -- disableLanguageServices = true,
              -- disableOrganizeImports = true,
            },
            python = {
              -- Disable specific type-checking errors
              analysis = {
                -- Disable general type issues (e.g., str → int)
                typeCheckingMode = "off", -- Options: "off", "basic", "strict" -- GREG >> works!
                -- OR disable specific error codes:
                -- reportGeneralTypeIssues = false,
                -- reportArgumentType = false,
              },
            },
            enabled = true, -- Disables Pyright BUT GD DOES NOT WORK ANYMORE, keep it on
          },
        },
      },
    },
  },
}
