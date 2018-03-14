set nocompatible              " be iMproved, required
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
Plugin 'udalov/kotlin-vim'
Plugin 'vim-scripts/vim-auto-save'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set tabstop=4
set shiftwidth=4
set expandtab
set wildignore+=*/tmp/*,*.jar
let NERDTreeIgnore = ['\.jar$']

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
filetype plugin indent on
let g:auto_save=1
