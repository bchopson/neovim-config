return {
  { "madox2/vim-ai" },
  {
    "olimorris/codecompanion.nvim",
    config = true,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    opts = {
      adapters = {
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = "cmd:op read --account my.1password.com 'op://Private/Anthropic API/credential' --no-newline",
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "anthropic",
        },
        inline = {
          adapter = "copilot",
        },
      },
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
