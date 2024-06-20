-- Clear hlsearch when pressing <Esc>
vim.keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>")

-- Fixing skill issues
vim.keymap.set("n", "<left>", '<cmd>echo "Skill issues..."<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Skill issues..."<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Skill issues..."<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Skill issues..."<CR>')

-- Exit insert mode using jk
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with 'jk'" })
