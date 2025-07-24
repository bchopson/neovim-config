return {
  {
    "nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "rust",
        "terraform",
      })
    end,
  },
  {
    "echasnovski/mini.ai",
    -- pin until lazyvim updates nvim-treesitter
    -- https://github.com/LazyVim/LazyVim/discussions/6132
    commit = "7c36f6d459bd8a15c77fbfa75fbc843b2c18af87",
  },
  {
    "raimon49/requirements.txt.vim",
  },
}
