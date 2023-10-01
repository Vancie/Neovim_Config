local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)



lsp.setup({

})



local cmp = require('cmp')

cmp.setup({
    sources = {
        { name = 'nvim_lsp'},
        { name = 'buffer' },
        { name = 'luasnip' },
        { name = 'path' },
    },
    mapping = {
        ['<Enter>'] = cmp.mapping.confirm({select = false}),
        ['<C-e>'] = cmp.mapping.abort(),
            ['<C-p>'] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_prev_item({behavior = 'insert'})
          else
            cmp.complete()
          end
        end),
        ['<C-n>'] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_next_item({behavior = 'insert'})
          else
            cmp.complete()
          end
        end),
    },
    snippet = {
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
         completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }
})
