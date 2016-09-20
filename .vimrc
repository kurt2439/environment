set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'kien/ctrlp.vim'
Plugin 'godlygeek/tabular'
Plugin 'tpope/vim-surround'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'Raimondi/delimitMate'               "Plugin for adding matching brackets parens and quotes
Plugin 'Yggdroot/indentLine'                "Plugin for displaying indentation line

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set softtabstop=4 
set shiftwidth=4 
set expandtab
set nu

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

let python_highlight_all=1
syntax on

if has('gui_running')
    colorscheme solarized
else
    "colorscheme zenburn
    colorscheme solarized
endif
