return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 2000 },
      inlay_hints = { enabled = false },
      servers = {
        emmet_language_server = {},
        typos_lsp = {},
        terraformls = {},
        phpactor = {},
      },
    },
  },
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        rust = { "rustfmt" },
        terraform = { "hclfmt" },
      },
    },
  },
  { "nvim-treesitter/nvim-treesitter-context", enabled = false },
}
