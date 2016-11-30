" Vundle start

set nocompatible	" be iMproved, required
filetype off		" required
let mapleader = " " " Map leader to space or not, that's the main question

" Auto resize Vim splits
set winheight=30
set winminheight=5
set winwidth=120
set winminwidth=20

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Vundlevim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-syntastic/syntastic'
Plugin 'flazz/vim-colorschemes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'tpope/vim-surround'
Plugin 'digitaltoad/vim-pug'
Plugin 'wavded/vim-stylus'
Plugin 'moll/vim-node'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-obsession'
Plugin 'gcmt/taboo.vim'
Plugin 'djoshea/vim-autoread'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ap/vim-css-color'
Plugin 'othree/html5.vim'

" Must be last
Plugin 'ryanoasis/vim-devicons'

call vundle#end()			" required
filetype plugin indent on	" required

" Vundle end

" Airline
let g:airline#extensions#tabline#enabled = 1
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='zenburn'

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1
let g:NERDTreeWinSize=30

" map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let NERDTreeQuitOnOpen=1
let NERDTreeIgnore = ['\.swp$']

" Nerdtree tabs
nmap <silent> <leader>t :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 2 

set sessionoptions+=tabpages,globals
let g:taboo_tabline = 0

" Auto-pairs
let g:AutoPairsFlyMode = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()};
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_pug_checkers = ['pug_lint']
let g:syntastic_stylus_checkers = ['stylint']

" Tabs shortcuts
nnoremap tn :tabnew<Space>
nnoremap tl :tabnext<CR>
nnoremap th :tabprev<CR>

" NerdFont patched
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Nerd\ Font\ Complete\ 12

" Easy semicolon mapping
nnoremap <leader>; A;<esc>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Use enter to create newlines in normal mode
" nnoremap <CR> o<Esc>

" Remap + and - to window sizes
nnoremap <silent> + :exe "resize " . (winwidth(0) * 3/2)<CR>
nnoremap <silent> - :exe "resize " . (winwidth(0) * 2/3)<CR>

set encoding=utf-8
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
set listchars=tab:\|\  
set list

set t_Co=256
syntax on
colorscheme zenburn
