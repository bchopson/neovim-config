-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.maplocalleader = "\\"
vim.g.root_spec = { { ".git", "lua" }, "lsp", "cwd" }
if jit.os == "Windows" then
  vim.g.python_host_prog = [[C:\Users\benjamin\scoop\apps\python\current\python]]
  vim.g.python3_host_prog = [[C:\Users\benjamin\scoop\apps\python\current\python]]
else
  -- Ensures mise shims are used
  -- mise is Mac/Linux only at present
  vim.env.PATH = vim.env.HOME .. "/.local/share/mise/shims:" .. vim.env.PATH
end

opt = vim.opt

opt.wrap = true
opt.timeoutlen = 1000
opt.ttimeoutlen = 0
opt.relativenumber = false
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"
opt.foldlevelstart = 99
opt.guifont = { "JetBrainsMonoNL Nerd Font", ":h9" }
opt.clipboard = ""
