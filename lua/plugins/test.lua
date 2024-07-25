require("which-key").add({
  { "<leader>t", group = "test" },
})
return {
  {
    "vim-test/vim-test",
    keys = {
      { "<leader>tn", ":TestNearest<CR>", desc = "Test Nearest" },
      { "<leader>tr", ":TestLast<CR>", desc = "Test Last" },
      { "<leader>tc", ":TestClass<CR>", desc = "Test Class" },
      { "<leader>tf", ":TestFile<CR>", desc = "Test File" },
      { "<leader>ta", ":TestSuite<CR>", desc = "Test Suite" },
      { "<leader>tg", ":TestVisit<CR>", desc = "Test Visit" },
      { "<leader>tp", ":TestNearest --pdb<CR>", desc = "Test Nearest w/ Debug" },
    },
    dependencies = {
      {
        "preservim/vimux",
        enabled = function()
          return jit.os ~= "Windows"
        end,
        keys = {
          { "<leader>tq", ":VimuxCloseRunner<CR>", desc = "Close Test Pane" },
        },
        config = function()
          vim.g["test#strategy"] = "vimux"
          vim.g.VimuxHeight = "40"
        end,
      },
    },
  },
}
