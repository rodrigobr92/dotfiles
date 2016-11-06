" Vundle start

set nocompatible	" be iMproved, required
filetype off		" required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundlevim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'flazz/vim-colorschemes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'

" Must be last
Plugin 'ryanoasis/vim-devicons'

call vundle#end()			" required
filetype plugin indent on	" required

" Vundle end

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

" Nerdtree tabs
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

" NerdFont patched
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

set encoding=utf-8
set t_Co=256
colorscheme zenburn
set tabstop=4
set noexpandtab
set shiftwidth=4
set autoindent
set smartindent
set relativenumber
set number
set showcmd
set cursorline
set hlsearch
set ignorecase
set autoindent
syntax on
