return {
  { "madox2/vim-ai" },
  {
    "echasnovski/mini.bracketed",
    main = "mini.bracketed",
    config = true,
  },
  { "tpope/vim-abolish" },
  { "PeterRincker/vim-argumentative" },
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        char = {
          jump_labels = true,
        },
        search = {
          enabled = false,
        },
      },
    },
  },
  { "folke/zen-mode.nvim", keys = {
    { "<leader>uz", ":ZenMode<CR>", desc = "Toggle Zen Mode" },
  } },
}
