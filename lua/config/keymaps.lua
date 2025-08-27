-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local function map(mode, lhs, rhs, opts)
  local keys = require("lazy.core.handler").handlers.keys
  ---@cast keys LazyKeysHandler
  -- do not create the keymap if a lazy keys handler exists
  if not keys.active[keys.parse({ lhs, mode = mode }).id] then
    opts = opts or {}
    opts.silent = opts.silent ~= false
    vim.keymap.set(mode, lhs, rhs, opts)
  end
end

map("i", "kk", "<esc>", { silent = true })
map("i", "jj", "<esc>", { silent = true })
map("t", "kk", "<C-\\><C-N>", { desc = "Exit terminal mode" })
map("t", "jj", "<C-\\><C-N>", { desc = "Exit terminal mode" })
map("n", "<leader>h", "<C-W>s", { desc = "Split window horizontal" })
map("n", "<leader>v", "<C-W>v", { desc = "Split window vertical" })
map("n", "<leader>q", ":q<CR>", { desc = "Close window" })
map("n", "<leader>Q", ":q!<CR>", { desc = "Close window (force)" })
map("n", "<leader>wq", ":wq<CR>", { desc = "Save and close window" })
map("n", "<leader>w", ":w<CR>", { desc = "Save window" })
