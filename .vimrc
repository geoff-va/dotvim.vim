"Vundle Setup from - https://github.com/VundleVim/Vundle.vim
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'vim-syntastic/syntastic'
Plugin 'Townk/vim-autoclose'
Plugin 'vim-airline/vim-airline'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'dkprice/vim-easygrep'
Plugin 'davidhalter/jedi-vim'
" Plugin 'derekwyatt/vim-scala'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'mtth/scratch.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"My Settings
let mapleader = ','
colorscheme darcula
syntax on
nmap <leader>tt :TagbarToggle<CR>  " Toggle Tag Bar
nmap <leader>ee :NERDTreeToggle<CR>  " Toggle Nerd Tree
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc', '\.idea$']
set nospell
set number
set cursorline
set undofile
command W w
map <leader>re :!sudo /edx/bin/supervisorctl restart edxapp:<cr>

" Airline Settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

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
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

"syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_flake8_post_args='--ignore=E501,W291'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" jedi-vim settings
let g:jedi#documentation_command = "D"

" use normal regex
nnoremap / /\v
vnoremap / /\v

set gdefault   " default global replace on line
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %
nnoremap j gj
nnoremap k gk

" Window navidation
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-l> :wincmd l<CR>
