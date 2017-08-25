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

" Plugins
let &runtimepath.=',$HOME/.vim/bundle/Vundle.vim'
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'ryanss/vim-hackernews'
Plugin 'othree/yajs'
Plugin 'jiangmiao/auto-pairs'
Plugin 'gavocanov/vim-js-indent'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'metakirby5/codi.vim'
Plugin 'mxw/vim-jsx'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'

call vundle#end()


" start NERDTree on startup if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" open NERDTree with Ctrl+n
map <C-n> :NERDTreeToggle<CR>
" close vim if only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" mark column 80
set colorcolumn=80
highlight colorcolumn ctermbg=green guibg=green
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%>80v.\+/

set background=dark
colorscheme gruvbox
"colorscheme OceanicNext
"colorscheme SerialExperimentsLain

let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='luna'
let g:airline_theme='gruvbox'


" ctrlp settings
set wildignore+=*/node_modules/*,*/target/*

" MacVim settings (set font, remove scrollbars)
set guifont=Menlo:h12
set guioptions-=r
set guioptions-=L

