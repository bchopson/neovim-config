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
    config = function()
      if jit.os ~= "Windows" then
        vim.g["test#python#pytest#executable"] = "mise exec -- pytest"
      end
    end,
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
          if jit.os ~= "Windows" then
            vim.g["test#strategy"] = "vimux"
          else
            vim.g["test#strategy"] = "neovim"
          end
          vim.g.VimuxHeight = "40%"
        end,
      },
    },
  },
}
