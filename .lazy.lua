return {
  {
    "augmentcode/augment.vim",
    cond = true,
    lazy = false,
    config = function()
      vim.g.augment_workspace_folders = {
        "~/.config/nvim/",
      }
    end,
  },
}
