lua << EOF
require('telescope').setup{ 
    defaults = {
        prompt_prefix = "   "
    }
}
require('telescope').load_extension('fzf')
EOF

" Find files using Telescope command-line sugar.
"
nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>gs <cmd>Telescope git_status<cr>
