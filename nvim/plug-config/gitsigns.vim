lua << EOF
require('gitsigns').setup{
    keymaps ={
        -- Default keymap options
        noremap = true,

        ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
        ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},

        ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
        ['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
        ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
        ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
        ['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
        ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
        ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
        ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
        ['n <leader>bd'] = '<cmd>lua require"gitsigns".diffthis()<CR>',  -- map diff the current buffer
        ['n <leader>ga'] = '<cmd>lua require"gitsigns".get_actions()<CR>', -- map getactions for current line

        -- Text objects
        ['o ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>',
        ['x ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>'
    }
}
EOF

" Defaults of gitsings setup
" require('gitsigns').setup {
" signs = {
"   add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
"   change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
"   delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
"   topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
"   changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
" },
" numhl = false,
" linehl = false,
" keymaps = {
"   -- Default keymap options
"   noremap = true,
"
"   ['n ]c'] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns\".next_hunk()<CR>'"},
"   ['n [c'] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns\".prev_hunk()<CR>'"},
"
"   ['n <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
"   ['v <leader>hs'] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
"   ['n <leader>hu'] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
"   ['n <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
"   ['v <leader>hr'] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
"   ['n <leader>hR'] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
"   ['n <leader>hp'] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
"   ['n <leader>hb'] = '<cmd>lua require"gitsigns".blame_line(true)<CR>',
"
"   -- Text objects
"   ['o ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>',
"   ['x ih'] = ':<C-U>lua require"gitsigns".select_hunk()<CR>'
" },
" watch_index = {
"   interval = 1000
" },
" current_line_blame = false,
" sign_priority = 6,
" update_debounce = 100,
" status_formatter = nil, -- Use default
" use_internal_diff = true,  -- If luajit is present
" }
