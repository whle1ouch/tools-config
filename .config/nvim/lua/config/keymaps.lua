-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("v", "<S-l>", "$")
vim.keymap.set("v", "<S-k>", "^")
vim.keymap.set("n", "gh", "^", { desc = "Go to start of line" })

vim.keymap.set("n", "gl", "$", { desc = "Go to end of line" })
local format = "LazyFormat"

vim.keymap.set("n", "<leader>fm", "<cmd>" .. format .. "<cr>")

local no_hightlight = "nohlsearch"
vim.keymap.set("n", "<leader>nh", "<cmd>" .. no_hightlight .. "<cr>", { desc = "no highlight" })

vim.keymap.del("n", "<leader>n")
vim.keymap.set("n", "<leader>no", function()
  Snacks.notifier.show_history()
end, { desc = "Notification History" })

-- 设置Normal和visual模式下的<S-j>映射为一个空函数，相当于取消映射
vim.api.nvim_set_keymap("n", "<S-j>", "<NOP>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<S-j>", "<NOP>", { noremap = true, silent = true })
