#!/bin/sh
FILES=".vimperatorrc .zshrc .zsh_aliases .zsh_helpers .zsh_misc .gitconfig .xsession .i3 .i3status.conf .vim .vimrc"
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
echo done
