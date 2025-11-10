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
      vim.g.augment_node_command = vim.g.node_host_prog
    end,
    keys = {
      { "<leader>zc", ":Augment chat<CR>", desc = "Augment Chat", mode = { "n" } },
      { "<leader>zc", ":'<'>Augment chat<CR>", desc = "Augment Chat", mode = { "v" } },
      { "<leader>zz", ":Augment chat-toggle<CR>", desc = "Toggle Augment Chat" },
      { "<leader>zn", ":Augment chat-new<CR>", desc = "New Augment Chat", mode = { "v", "n" } },
    },
  },
  {
    "olimorris/codecompanion.nvim",
    opts = {
      strategies = {
        chat = {
          adapter = "auggie_cli",
        },
      },
      extensions = {
        spinner = {},
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "franco-ruggeri/codecompanion-spinner.nvim",
    },
    keys = {
      { "<leader>ac", ":CodeCompanionChat Toggle<CR>", desc = "Code Companion toggle chat", mode = { "n" } },
      { "<leader>av", ":CodeCompanionChat Add<CR>", desc = "Code Companion add visual selection", mode = { "v" } },
    },
  },
  {
    "nvim-mini/mini.bracketed",
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
          if name:match("AugmentChatHistory") then
            return false
          end

          return true
        end,
      },
    },
  },
}
