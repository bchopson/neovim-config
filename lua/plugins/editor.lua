require("which-key").add({
  { "<leader>z", group = "ai" },
})
return {
  { "madox2/vim-ai" },
  {
    "augmentcode/augment.vim",
    lazy = false,
    keys = {
      { "<leader>zc", ":Augment chat<CR>", desc = "Augment Chat" },
      { "<leader>zz", ":Augment chat-toggle<CR>", desc = "Toggle Augment Chat" },
    },
  },
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
  { "AndrewRadev/linediff.vim" },
}
