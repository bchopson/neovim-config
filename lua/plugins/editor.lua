require("which-key").add({
  { "<leader>z", group = "ai" },
})
return {
  {
    "augmentcode/augment.vim",
    branch = "prerelease",
    lazy = false,
    -- disable tab mapping
    init = function()
      vim.keymap.set("i", "<C-J>", "<cmd>call augment#Accept()<CR>", { noremap = true })
      vim.g.augment_disable_tab_mapping = true
    end,
    keys = {
      { "<leader>zc", ":Augment chat<CR>", desc = "Augment Chat", mode = { "n" } },
      { "<leader>zc", ":'<'>Augment chat<CR>", desc = "Augment Chat", mode = { "v" } },
      { "<leader>zz", ":Augment chat-toggle<CR>", desc = "Toggle Augment Chat" },
      { "<leader>zn", ":Augment chat-new<CR>", desc = "New Augment Chat", mode = { "v", "n" } },
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
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        custom_filter = function(buf_number, buf_numbers)
          local name = vim.fn.bufname(buf_number)
          if name:match("^term://") then
            return false
          end
          if name:match("AugmentChatHistory") then
            return false
          end

          return true
        end,
      },
    },
  },
}
