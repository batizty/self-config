set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()

" let Vundle manage Vundle
" required!
Plugin 'gmarik/vundle'

" Code Completions
"Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'" 
"Plugin 'Shougo/neocomplcache'
"Plugin 'Raimondi/delimitMate'
"Plugin 'ervandew/supertab'

" snippets
"Plugin 'garbas/vim-snipmate'
"Plugin 'honza/vim-snippets'
" snipmate dependencies
"Plugin 'MarcWeber/vim-addon-mw-utils'
"Plugin 'tomtom/tlib_vim'

" Fast navigation
"Plugin 'jwhitley/vim-matchit'
"Plugin 'Lokaltog/vim-easymotion'

" Fast editing
"Plugin 'tpope/vim-surround'
"Plugin 'sjl/gundo.vim'
"Plugin 'godlygeek/tabular'
"Plugin 'nathanaelkane/vim-indent-guides'

" IDE features
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'taglist.vim'
"Plugin 'humiaozuzu/TabBar'
"Plugin 'majutsushi/tagbar'
"Plugin 'mileszs/ack.vim'
"Plugin 'kien/ctrlp.vim'
"Plugin 'tpope/vim-fugitive'
"Plugin 'bronson/vim-trailing-whitespace'


" Other Utils
" Plugin 'humiaozuzu/fcitx-status'
"Plugin 'nvie/vim-togglemouse'

" Syntax/Indent for language enhancement
" markup language
"Plugin 'tpope/vim-markdown'
" Plugin 'timcharper/textile.vim'
" Golang
"Plugin 'fatih/vim-go'

" FPs
Plugin 'kien/rainbow_parentheses.vim'
" Plugin 'wlangstroth/vim-racket'
" Plugin 'vim-scripts/VimClojure'

" Bar and lines
"Plugin 'Lokaltog/vim-powerline'
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Color Schemes
Plugin 'altercation/vim-colors-solarized'
Plugin 'jakwings/vim-colors'

" scala
Plugin 'derekwyatt/vim-scala'
Plugin 'rosstimson/scala-vim-support'

" python
Plugin 'vim-scripts/indentpython.vim'
Plugin 'tell-k/vim-autopep8'
Plugin 'Yggdroot/indentLine'

filetype plugin indent on     " required!
