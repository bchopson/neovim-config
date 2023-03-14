return {
  {
    "nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "terraform",
      })
    end,
  },
  {
    "raimon49/requirements.txt.vim",
  },
}
