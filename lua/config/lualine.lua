local lualine = require("lualine")

lualine.setup({
    options = {
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        refresh = {                  -- sets how often lualine should refresh it's contents (in ms)
            statusline = 1000,         -- The refresh option sets minimum time that lualine tries
            tabline = 1000,            -- to maintain between refresh. It's not guarantied if situation
            winbar = 1000              -- arises that lualine needs to refresh itself before this time
                                       -- it'll do it.
        }
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch'},
        lualine_c = {'branch'},
        lualine_x = {'mode'},
        lualine_y = {},
        lualine_z = {},
          
    }
})


