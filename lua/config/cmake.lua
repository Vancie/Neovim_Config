
local keymap = vim.keymap.set

keymap("n", "<leader>cg", ":CMakeGenerate<CR>")
keymap("n", "<leader>cb", ":CMakeBuild<CR>")
keymap("n", "<leader>cc", ":CMakeClose")
