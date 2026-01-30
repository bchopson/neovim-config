return {
  {
    "kylechui/nvim-surround",
    event = "VeryLazy",
    opts = {
      keymaps = {
        normal = "gsa",
        normal_cur = "gsaa",
        normal_line = "gsA",
        normal_cur_line = "gsAA",
        visual = "gsa",
        visual_line = "gsA",
        delete = "gsd",
        change = "gsr",
      },
    },
  },
}
