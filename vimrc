set nocompatible

syntax enable
set number

filetype on
filetype plugin on
filetype indent on

set autoread

set encoding=utf-8

set backspace=indent,eol,start

set expandtab
set autoindent
set smartindent
set shiftwidth=2
set softtabstop=2
set splitbelow

" fix default regex handling so that \v isn't inserted before searches
nnoremap / /\v
vnoremap / /\v

" if searching with all lower case, be case-insensitive, else be case-sensitive
set ignorecase
set smartcase

" highlight search results as you type
set incsearch
set showmatch
set hlsearch

" remap the <leader> key from \ to ,
let mapleader = ","
" ,<space> will clear search/highlighting
nnoremap <leader><space> :noh<cr>
" ,g will toggle gitgutter line highlighting
nnoremap <leader>g :GitGutterLineHighlightsToggle<cr>
" ,w will open a new vertical split and switch over to it
nnoremap <leader>w <C-w>v<c-w>l
" mappings for easily navigating splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'othree/yajs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'gavocanov/vim-js-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'maxmellon/vim-jsx-pretty'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vimwiki/vimwiki'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-commentary'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tomlion/vim-solidity'
Plugin 'elzr/vim-json'
Plugin 'ryanoasis/vim-devicons'
" themes
Plugin 'liuchengxu/space-vim-dark'
Plugin 'KeitaNakamura/neodark.vim'
Plugin 'tyrannicaltoucan/vim-deep-space'
Plugin 'whatyouhide/vim-gotham'

call vundle#end()


" start NERDTree on startup if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" close vim if only window left open is a NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" mark column 80
set colorcolumn=80
highlight colorcolumn ctermbg=green guibg=green

" Theme settings
set background=dark

if $ITERM_PROFILE == 'Gotham'
  colorscheme gotham
  let g:airline_theme='gotham'
elseif $ITERM_PROFILE == 'space'
  colorscheme space-vim-dark
  let g:airline_theme='violet'
elseif $ITERM_PROFILE == 'Deep Space'
  colorscheme deep-space
  let g:airline_theme='violet'
elseif $ITERM_PROFILE == 'neodark'
  colorscheme neodark
else
  colorscheme solarized
  let g:airline_theme='solarized'
  let g:airline_solarized_bd='dark'
endif

" airline settings
let g:airline#extensions#tabline#enabled = 1

" ctrlp settings
set wildignore+=*/node_modules/*,*/target/*

" MacVim settings (set font, remove scrollbars)
set guifont=Menlo:h12
set guioptions-=r
set guioptions-=L

" javascript settings
let g:jsx_ext_required = 0

" git settings
let g:gitgutter_highlight_lines = 0

