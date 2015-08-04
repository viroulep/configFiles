set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle

call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/YankRing.vim'
Bundle 'viroulep/peaksea'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"Bundle 'vim-powerline'
Bundle 'bling/vim-markdown'
"Bundle 'Valloric/YouCompleteMe'
Bundle 'airblade/vim-gitgutter'
Bundle 'klen/python-mode'



filetype plugin indent on