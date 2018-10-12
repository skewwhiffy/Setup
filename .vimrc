set nocompatible              " be iMproved, required
set directory=$HOME/.vim/swapfiles//
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'udalov/kotlin-vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'rafi/awesome-vim-colorschemes'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set wildignore+=*/tmp/*,*.jar
let NERDTreeIgnore = ['\.jar$']

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
filetype plugin indent on

let g:ctrlp_custom_ignore = {
    \ 'dir': '\.git$\|\.idea$\|\.dockerignore$\|\.gradle$\',
    \ 'file': '\.exe$\|\.jar$\|\.class$\|\.kt.html$\'
    \ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_max_files = 100000
let g:ctrlp_clear_cache_on_exit = 0
let g:auto_save=1

syntax on
colorscheme seoul256-light
