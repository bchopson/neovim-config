-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = ","
vim.g.maplocalleader = ","
if jit.os == "Windows" then
  vim.g.python_host_prog = [[C:\Users\benjamin\scoop\apps\python\current\python]]
  vim.g.python3_host_prog = [[C:\Users\benjamin\scoop\apps\python\current\python]]
else
  vim.g.python_host_prog = "/usr/bin/python"
  vim.g.python3_host_prog = "/usr/bin/python3"
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
