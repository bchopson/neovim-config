require("which-key").add({
  { "<leader>z", group = "ai" },
})
return {
  {
    "augmentcode/augment.vim",
    lazy = false,
    keys = {
      { "<leader>zc", ":Augment chat<CR>", desc = "Augment Chat", mode = { "n" } },
      { "<leader>zc", ":'<'>Augment chat<CR>", desc = "Augment Chat", mode = { "v" } },
      { "<leader>zz", ":Augment chat-toggle<CR>", desc = "Toggle Augment Chat" },
      { "<leader>zn", ":Augment chat-new<CR>", desc = "New Augment Chat" },
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
