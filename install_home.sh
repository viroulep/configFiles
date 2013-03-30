#!/bin/sh
FILES=".vimperatorrc .zshrc .zsh_aliases .zsh_helpers .zsh_misc .gitconfig .Xdefaults .xsession .i3 .i3status.conf .vim .vimrc .config/dwb"
DIR=`pwd`
for f in $FILES;
do
    if [ -e $HOME/$f ];
    then
        echo "$f" already there.
    else
        ln -s $DIR/$f $HOME/$f
        echo "Linking " $f
    fi
done
#Special dwb
if [ -e ~/.local/share/dwb ];
then
    echo "~/.local/share/dwb" already there.
else
    ln -s /usr/share/dwb ~/.local/share/dwb
    echo "Linking " ~/.local/share/dwb
fi
echo done
