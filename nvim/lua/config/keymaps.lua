-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

-- Open native horizontal terminal split
map("n", "<leader>h", ":split | terminal<CR>", { desc = "Horizontal terminal split" })

-- Open native vertical terminal split
map("n", "<leader>v", ":vsplit | terminal<CR>", { desc = "Vertical terminal split" })

-- Easily escape terminal mode back to normal mode using Esc
map("t", "<Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
