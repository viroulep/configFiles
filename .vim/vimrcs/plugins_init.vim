set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle

call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'altercation/vim-colors-solarized'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'viroulep/peaksea'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'bling/vim-airline'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
"These are directly in the bundle folder (no submodule)
"Bundle 'vim-powerline'
"Plugin 'plasticboy/vim-markdown'
Plugin 'Valloric/YouCompleteMe'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-sleuth'
"Bundle 'klen/python-mode'
Plugin 'yuezk/vim-js'
Plugin 'MaxMEllon/vim-jsx-pretty'
Plugin 'rhysd/vim-llvm'
Plugin 'luochen1990/rainbow'
Plugin 'HiPhish/guile.vim'


filetype plugin indent on
