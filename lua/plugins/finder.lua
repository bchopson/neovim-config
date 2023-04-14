return {
  {
    "nvim-telescope/telescope.nvim",
    -- dependencies = {
    --   { "nvim-telescope/telescope-live-grep-args.nvim" },
    -- },
    -- config = function()
    --   require("telescope").load_extension("live_grep_args")
    -- end,
    -- keys = {
    --   { "<leader>/", "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>" },
    -- },
    keys = {
      { "<leader>/", vim.NIL },
    },
  },
  {
    "junegunn/fzf.vim",
    dependencies = {
      { "junegunn/fzf" },
    },
    keys = {
      { "<leader>/", "<cmd>Rg<CR>" },
    },
  },
}
