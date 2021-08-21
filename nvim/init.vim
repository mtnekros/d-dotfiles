"  nvim/init.vim file

let mapleader=" " " map leader to Space
syntax enable " enable syntax highlighting
set ignorecase " ignore case when searching
set scrolloff=5 " keep 7 lines when scrolling
set sidescrolloff=5 " keep 7 lines when scrolling sideways
set nohlsearch " setting search texts to not be highlighted
set tabstop=4 shiftwidth=4 expandtab
set number relativenumber " show both number and relativenumber
set numberwidth=1 " set numberwith/gutter to be as small as possible
set signcolumn=yes:1 " keep 1 column with for extra signs in gutter (eg:gitkeeps sign or lint errors)
set clipboard=unnamedplus " yank/copy to clipboard
set cursorline " highlight cursorline
set path+=** " Search file recursively with find
set wildmenu
set mouse=a " mouse usable on every mode
autocmd FileType vue setlocal ts=3 sts=3 sw=3
autocmd FileType sql setlocal ts=2 sts=2 sw=2
set noshowmode " hide mode sinces powerline plugin already shows it
set guicursor=i:block " make cursor fat in insert mode like in vim

augroup numbertoggle " set relativenumber off in insert mode
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

""" Plugins
call plug#begin('~/.config/nvim/plugged')
" Better Syntax Support
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'joshdick/onedark.vim'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
" for intellisense
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" for fuzzy finding telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" for git gutter
Plug 'lewis6991/gitsigns.nvim'
" for icons in powerline & nerdtree
Plug 'ryanoasis/vim-devicons'  " also have to install nerd font in your system for this to work
call plug#end()

source $HOME/.config/nvim/plug-config/gitsigns.vim
source $HOME/.config/nvim/plug-config/telescope.vim
source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/onedark.vim
source $HOME/.config/nvim/plug-config/airline.vim
