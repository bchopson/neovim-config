return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      format = { timeout_ms = 2000 },
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        emmet_language_server = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
        typescriptreact = { "prettier" },
        typescript = { "prettier" },
      },
    },
  },
  { "nvim-treesitter/nvim-treesitter-context", enabled = false },
}
