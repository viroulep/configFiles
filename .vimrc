"set runtimepath+=~/.vim

source ~/.vim/vimrcs/plugins_init.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/extended.vim

try
source ~/.vim/vimrcs/my_configs.vim
catch
endtry
