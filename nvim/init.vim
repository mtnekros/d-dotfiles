call plug#begin('~/.config/nvim/plugged')
" Better Syntax Support
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
" for intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" for fuzzy find telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()

" map leader to Space
let mapleader=" " " have to mapleader before sourcing the plugin config
" Source the nvim plugin conf
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/telescope.vim

" settings start here
syntax enable
set ignorecase " ignore case when searching
set scrolloff=5 " keep 5 lines when scrolling
set nohlsearch " setting search texts to not be highlighted
set tabstop=4 shiftwidth=4 expandtab
set number relativenumber
let g:lightline = { 'colorscheme': 'onedark', }
let g:onedark_color_overrides = {
\ "black": {"gui": "#262A32", "cterm": "234", "cterm16": "0" },
\}
" set guifont=Fira\ Code\ Regularh13 
let g:onedark_terminal_italics = 1 
colorscheme onedark
set clipboard=unnamedplus
set cursorline
set path+=** " Search file recursively with find
set wildmenu
autocmd FileType vue setlocal ts=3 sts=3 sw=3
autocmd FileType sql setlocal ts=2 sts=2 sw=2

augroup numbertoggle
    autocmd!
    autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
    autocmd BufLeave,FocusLost,InsertEnter * set norelativenumber
augroup END

if (empty($TMUX))
  if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  if (has("termguicolors"))
    set termguicolors
  endif
endif

" NERDTree Settings
nmap <C-f> :NERDTreeToggle<CR>

" window navigation mappings
" probably terminal mode
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
" insert mode
inoremap <A-h> <C-\><C-n><C-w>h
inoremap <A-j> <C-\><C-n><C-w>j
inoremap <A-k> <C-\><C-n><C-w>k
inoremap <A-l> <C-\><C-n><C-w>l
" normal mode
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" make Y work like other capital letters
nnoremap Y y$
" Moving lines vertically
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

" Mapping for quickfix
nnoremap <silent> <leader>n :cnext<CR>
nnoremap <silent> <leader>p :cprev<CR>
