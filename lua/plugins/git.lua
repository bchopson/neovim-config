return {
  {
    "tpope/vim-fugitive",
    lazy = false,
    keys = {
      { "<leader>gl", ":0Gclog<CR>", desc = "0Gclog" },
      { "<leader>gd", ":Gdiff<CR>", desc = "Gdiff" },
      { "<leader>gb", ":Git blame<CR>", desc = "G blame" },
      { "<leader>gc", ":G commit -v<CR>", desc = "G commit" },
      { "<leader>gr", ":Gread<CR>", desc = "Gread" },
    },
  },
  {
    -- GitHub
    "tpope/vim-rhubarb",
  },
  {
    -- Bitbucket
    "tommcdo/vim-fubitive",
  },
  {
    "pwntester/octo.nvim",
    opts = {
      suppress_missing_scope = {
        projects_v2 = true,
      },
    },
  },
}
