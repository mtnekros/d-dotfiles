set completeopt=menu,menuone,noselect

lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'
  local lspkind = require'lspkind'

  -- Global setup
  cmp.setup({
    snippet = {
      expand = function(args)
          require('luasnip').lsp_expand(args.body) -- For luasnip users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<A-s>'] = cmp.mapping.complete(),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set select to false to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp', keyword_length=3, max_item_count=40 },
      { name = 'nvim_lua', keyword_length=3, max_item_count=40 },
      { name = 'luasnip' },
    }, {
      { name = 'path', max_item_count=40 },
      { name = 'buffer', keyword_length=5, max_item_count=40 },
    }),
    snippet = {
      expand = function(args)
        require("luasnip").lsp_expand(args.body)
      end
    },
    formatting = {
      format = lspkind.cmp_format {
      with_text = true,
      menu = {
        buffer = "[buf]",
        nvim_lsp = "[LSP]",
        nvim_lua = "[api]",
        path = "[path]",
        luasnip = "[snip]",
        }
      }
    },
    
    experimental = {
      native_menu = false,
      ghost_text = true,
    }

  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the cmp_git source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })
EOF
