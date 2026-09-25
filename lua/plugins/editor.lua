return {
  {
    "folke/sidekick.nvim",
    opts = {
      cli = {
        win = {
          keys = {
            shift_cr = {
              "<S-CR>",
              function(self)
                if self:is_running() then
                  vim.api.nvim_chan_send(self.job, "\x1b[13;2u")
                end
              end,
              mode = "t",
              desc = "CSI-u Shift+Enter",
            },
            alt_cr = {
              "<A-CR>",
              function(self)
                if self:is_running() then
                  vim.api.nvim_chan_send(self.job, "\x1b[13;3u")
                end
              end,
              mode = "t",
              desc = "CSI-u Alt+Enter",
            },
          },
        },
        tools = {
          pi = {
            cmd = { "nono", "run", "--allow-cwd", "--profile", "pi", "--", "pi" },
          },
          omp = {
            cmd = { "nono", "run", "--allow-cwd", "--profile", "omp", "--", "omp" },
          },
          -- codex = {
          --   cmd = { "nono", "run", "--allow-cwd", "--profile", "always-further/codex", "--", "codex" },
          -- },
          claude = {
            cmd = {
              "nono",
              "run",
              "--allow-cwd",
              "--profile",
              "claude",
              "--",
              "claude",
              "--dangerously-skip-permissions",
            },
          },
        },
        mux = {
          enabled = true,
          backend = "tmux",
        },
      },
      nes = {
        enabled = false,
      },
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
}
