"Vundle Setup from - https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'dkprice/vim-easygrep'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mtth/scratch.vim'
"Plugin 'LaTeX-Box-Team/LaTeX-Box'
"Plugin 'easymotion/vim-easymotion'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"My Settings
let mapleader = ','
colorscheme darcula
syntax on
nmap <leader>tt :TagbarToggle<CR>  " Toggle Tag Bar
nmap <leader>ee :NERDTreeToggle<CR>  " Toggle Nerd Tree
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc', '\.idea$', '\.aux', '\.fls', '\.fdb_']
set nospell
set cursorline
set cursorcolumn
set number
set nopaste
set undofile
command W w

let g:AutoClosePumvisible = {"ENTER": "", "ESC": ""}

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
"let g:airline_powerline_fonts = 1

" Buffer Navigation
nnoremap <S-t> :enew<cr>
nnoremap <S-k> :bnext<cr>
nnoremap <S-j> :bprevious<cr>
nnoremap <leader>bq :bp <BAR> bd #<cr>
nnoremap <leader>bs :ls<cr>

" Cursor position/setup
set scrolloff=999
set scrolljump=1
set colorcolumn=80

" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

nmap <leader>re :! /edx/bin/supervisorctl restart edxapp:<cr>
nmap <leader>rew :! /edx/bin/supervisorctl restart edxapp:cms<cr>

nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>

set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk

let g:LatexBox_latexmk_async=1
let g:LatexBox_latexmk_preview_continuously=1

autocmd Filetype tex,html,javascript setlocal ts=2 sw=2 sts=2 et
set backspace=2

set vb t_vb=

