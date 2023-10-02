print("Hello Neovim")

vim.g.python3_host_prog = "/usr/local/bin/python3.6"

require("v1.options")
require("v1.keymaps")
require("v1.lazy")
require("config") 
