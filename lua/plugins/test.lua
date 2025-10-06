require("which-key").add({
  { "<leader>t", group = "test" },
})
return {
  {
    "vim-test/vim-test",
    dependencies = { "folke/snacks.nvim" },
    keys = {
      { "<leader>tn", ":TestNearest<CR>", desc = "Test Nearest" },
      { "<leader>tv", ":TestNearest -vv<CR>", desc = "Test Nearest Verbose" },
      { "<leader>tr", ":TestLast<CR>", desc = "Test Last" },
      { "<leader>tc", ":TestClass<CR>", desc = "Test Class" },
      { "<leader>tf", ":TestFile<CR>", desc = "Test File" },
      { "<leader>ta", ":TestSuite<CR>", desc = "Test Suite" },
      { "<leader>tg", ":TestVisit<CR>", desc = "Test Visit" },
      { "<leader>tp", ":TestNearest --pdb<CR>", desc = "Test Nearest w/ Debug" },
    },
    config = function()
      if jit.os ~= "Windows" then
        vim.g["test#python#pytest#executable"] = "uv run pytest"
      end
      vim.g["test#custom_strategies"] = {
        snacks = function(cmd)
          require("snacks").terminal(cmd, {
            win = {
              position = "bottom",
              height = math.floor(vim.o.lines * 0.4),
            },
            auto_close = false,
          })
        end,
      }
      vim.g["test#strategy"] = "snacks"
    end,
  },
}
