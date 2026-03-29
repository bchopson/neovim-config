require("which-key").add({
  { "<leader>z", group = "ai" },
})
return {
  {
    "folke/sidekick.nvim",
    opts = {
      cli = {
        tools = {
          auggie = {
            cmd = { "auggie" },
            -- Customize how Sidekick formats messages for Auggie.
            -- This strips the leading "@" from location headers like
            --   @path/to/file :L10:C3
            -- so Auggie receives
            --   path/to/file :L10:C3
            format = function(text)
              local Text = require("sidekick.text")

              local function has_locfile_highlight(hl)
                if type(hl) == "string" then
                  return hl == "SidekickLocFile"
                elseif type(hl) == "table" then
                  return vim.tbl_contains(hl, "SidekickLocFile")
                end
              end

              for _, line in ipairs(text) do
                local first = line[1]
                local second = line[2]
                if first and second then
                  local first_text = first[1]
                  local hl = second[2]
                  if first_text == "@" and has_locfile_highlight(hl) then
                    table.remove(line, 1)
                  end
                end
              end
              return Text.to_string(text)
            end,
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
