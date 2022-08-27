"  nvim/init.vim file

let mapleader=" " " map leader to Space
syntax enable " enable syntax highlighting
" set ignorecase smartcase " smart case when searching (respects capital search)
set scrolloff=1 " keep 1 lines when scrolling
set sidescrolloff=5 " keep 7 lines when scrolling sideways
set nohlsearch " setting search texts to not be highlighted
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab shiftround
set number relativenumber " show both number and relativenumber
set numberwidth=1 " set numberwith/gutter to be as small as possible
set signcolumn=yes:1 " keep 1 column with for extra signs in gutter (eg:gitkeeps sign or lint errors)
set clipboard=unnamedplus " yank/copy to clipboard
set cursorline " highlight cursorline
set path+=** " Search file recursively with find
set wildignore+=**/node_modules/**
set wildignore+=**/venv/**,**/*.pyc
set wildmenu
set wildignore+=**/node_modules/**,
set wildignore+=**/venv/**,**/*.pyc,**/*.py~
set mouse=a " mouse usable on every mode
set noshowmode " hide mode sinces powerline plugin already shows it
set guicursor=i:block " make cursor fat in insert mode like in vim
set splitright " open on right side when doing vsplit
set noswapfile " I hate swap files
set nowrap " don't wrap the text
set incsearch " incremental search as I type
set laststatus=3 " set global status line for all window
set hidden " don't have to save file before changing buffer
set undofile " save undo history even after closing file
set list
set listchars=trail:,eol:,tab:-,lead:.,extends:,precedes:

augroup tabbing
    autocmd!
    autocmd FileType sql,vue,html,htmldjango setlocal ts=2 sts=2 sw=2

augroup folds
augroup END
    autocmd!
    autocmd FileType * normal zR
augroup END

augroup vuenolazyredraw
    autocmd!
    autocmd FileType vue setlocal nolazyredraw
augroup END

if (has("nvim"))
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if (has("termguicolors"))
    set termguicolors
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

" window navigation mappings
" terminal mode
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

" FU mapping
nnoremap <leader>fu ggVGr💀

" Reload vimrc
nnoremap <leader>v :source $MYVIMRC<CR>

" Add spell checker
nnoremap <leader>ss :setlocal spell! spelllang=en_us<CR>


""" Plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'joshdick/onedark.vim' " onedar theme
Plug 'sheerun/vim-polyglot' " better syntax support
Plug 'tpope/vim-surround' " yst<head> cs{'
Plug 'tpope/vim-fugitive' " git plugin that's so git it should be illegal
Plug 'lewis6991/gitsigns.nvim' " for basic git signs & functionalities
Plug 'tpope/vim-commentary' " for comment with gc + motion action
Plug 'vim-airline/vim-airline' " nicer status line
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' } " Markdown preview

" NERD Tree File Manager
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File Manager
Plug 'ryanoasis/vim-devicons'  " for icons in powerline & nerdtree: also have to install nerd font in your system for this to work

" Telescope
Plug 'nvim-lua/popup.nvim' " dependency for telescope The cmd 'Telescope' bare wasn't working before adding this
Plug 'nvim-lua/plenary.nvim' " dependency for telescope & gitsigns
Plug 'nvim-telescope/telescope.nvim' " for fuzzy finding telescope
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' } " make telescope faster using fzf scoring or sth

 " for better syntax highlighting, indentation & folding
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" snippets stuffs
Plug 'honza/vim-snippets'

" LSP stuff (Language Diagnostics)
" Plug 'neoclide/coc.nvim', {'branch': 'release'} " for intellisense
Plug 'neovim/nvim-lspconfig' " Configuration for Nvim LSP
Plug 'glepnir/lspsaga.nvim', { 'branch': 'main' } " better looking GUI for lsp
" Plug 'williamboman/nvim-lsp-installer' " for automatic installation of lsp

" autocompletion
Plug 'onsails/lspkind.nvim' " suggestion type icon for lsp
Plug 'hrsh7th/nvim-cmp' " for autocompletion
Plug 'hrsh7th/cmp-nvim-lsp' " for autocompletion
Plug 'hrsh7th/cmp-nvim-lua' " for lua api autocompletion
Plug 'hrsh7th/cmp-buffer' " for buffer autocompletion
Plug 'hrsh7th/cmp-path' " for path autocompletion

" For luasnip users.
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'rafamadriz/friendly-snippets' " vscode styel snippets
Plug 'onsails/lspkind.nvim' " suggestion type icon for lsp

call plug#end()

source $HOME/.config/nvim/plug-config/gitsigns.vim
source $HOME/.config/nvim/plug-config/telescope.vim
" source $HOME/.config/nvim/plug-config/coc.vim
source $HOME/.config/nvim/plug-config/onedark.vim
source $HOME/.config/nvim/plug-config/airline.vim
source $HOME/.config/nvim/plug-config/nerdtree.vim
source $HOME/.config/nvim/plug-config/treesitter.vim
source $HOME/.config/nvim/plug-config/vim-fugitive.vim
source $HOME/.config/nvim/plug-config/markdown-preview.vim
source $HOME/.config/nvim/plug-config/lspconfig.vim
source $HOME/.config/nvim/plug-config/nvim-cmp.vim
source $HOME/.config/nvim/plug-config/lua-snip.vim

set cc=80  " highlight column after 'textwidth'
hi ColorColumn ctermbg=Gray guibg=#3a3a3a
" background colors
hi Normal guibg=NONE ctermbg=NONE 
