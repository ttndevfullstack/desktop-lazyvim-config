-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Copy absolute path
vim.keymap.set("n", "<leader>cp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("Copied absolute path: " .. path)
end, { desc = "Copy absolute file path" })

-- Copy relative path
vim.keymap.set("n", "<leader>cr", function()
  local root = require("lazyvim.util").root()
  local path = vim.fn.fnamemodify(vim.fn.expand("%:p"), ":." .. root)
  vim.fn.setreg("+", path)
  vim.notify("Copied relative path: " .. path)
end, { desc = "Copy relative file path" })

-- Copy filename only
vim.keymap.set("n", "<leader>cf", function()
  local filename = vim.fn.expand("%:t")
  vim.fn.setreg("+", filename)
  vim.notify("Copied filename: " .. filename)
end, { desc = "Copy file name" })

-- Open Diffview
vim.keymap.set(
  "n",
  "<leader>gd",
  "<cmd>DiffviewOpen<CR>",
  { desc = "Git Diffview Open", noremap = true, silent = true }
)

-- Close Diffview
vim.keymap.set(
  "n",
  "<leader>gD",
  "<cmd>DiffviewClose<CR>",
  { desc = "Git Diffview Close", noremap = true, silent = true }
)

-- File history
vim.keymap.set(
  "n",
  "<leader>gf",
  "<cmd>DiffviewFileHistory %<CR>",
  { desc = "Git File History", noremap = true, silent = true }
)
