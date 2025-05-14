return {
  -- Pin mason as per https://github.com/LazyVim/LazyVim/issues/6039#issuecomment-2856227817
  { "mason-org/mason.nvim", version = "1.11.0" },
  { "mason-org/mason-lspconfig.nvim", version = "1.32.0" },
  {
    "neovim/nvim-lspconfig",
    opts = {
      format = { timeout_ms = 2000 },
      servers = {
        emmet_language_server = {},
        typos_lsp = {},
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
