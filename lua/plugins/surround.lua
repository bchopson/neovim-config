return {
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    config = function()
      vim.g.nvim_surround_no_normal_mappings = true
      vim.g.nvim_surround_no_visual_mappings = true

      vim.keymap.set("n", "gsa", "<Plug>(nvim-surround-normal)", {
        desc = "Add a surrounding pair around a motion (normal mode)",
      })
      vim.keymap.set("n", "gsaa", "<Plug>(nvim-surround-normal-cur)", {
        desc = "Add a surrounding pair around the current line (normal mode)",
      })
      vim.keymap.set("n", "gsA", "<Plug>(nvim-surround-normal-line)", {
        desc = "Add a surrounding pair around a motion, on new lines (normal mode)",
      })
      vim.keymap.set("n", "gsAA", "<Plug>(nvim-surround-normal-cur-line)", {
        desc = "Add a surrounding pair around the current line, on new lines (normal mode)",
      })
      vim.keymap.set("x", "gsa", "<Plug>(nvim-surround-visual)", {
        desc = "Add a surrounding pair around a visual selection",
      })
      vim.keymap.set("x", "gsA", "<Plug>(nvim-surround-visual-line)", {
        desc = "Add a surrounding pair around a visual selection, on new lines",
      })
      vim.keymap.set("n", "gsd", "<Plug>(nvim-surround-delete)", {
        desc = "Delete a surrounding pair",
      })
      vim.keymap.set("n", "gsr", "<Plug>(nvim-surround-change)", {
        desc = "Change a surrounding pair",
      })
    end,
  },
}
