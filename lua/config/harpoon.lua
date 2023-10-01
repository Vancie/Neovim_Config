
local harpoon = require("harpoon")
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")


harpoon.setup({
    menu = {
        width = 60,
    }
})

-- Keymaps --
local opts = { noremap = true, silent = true }



vim.keymap.set('n', '<leader>h', mark.add_file, opts)
vim.keymap.set('n', '<C-e>', ui.toggle_quick_menu, opts)



