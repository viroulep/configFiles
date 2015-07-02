#!/bin/bash
NP=`cat $HOME/now-playing`
if [ "$NP" == "" ]; then
    NP_ARTIST=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' 2>/dev/null|egrep -A 2 "artist"|egrep -v "artist"|egrep -v "array"|cut -b 27-|cut -d '"' -f 1|egrep -v ^$`
    NP_TITLE=`dbus-send --print-reply --dest=org.mpris.MediaPlayer2.spotify /org/mpris/MediaPlayer2 org.freedesktop.DBus.Properties.Get string:'org.mpris.MediaPlayer2.Player' string:'Metadata' 2>/dev/null|egrep -A 1 "title"|egrep -v "title"|cut -b 44-|cut -d '"' -f 1|egrep -v ^$`
    if [ $? -eq 0 ]; then
        NP="$NP_ARTIST - $NP_TITLE"
        echo $NP 2>/dev/null > $HOME/now-playing-spotify
    fi
fi
if [ "$NP" == "" ]; then
    NP=`mpc status 2>/dev/null | grep -v -e "ERROR" -e "volume" -e "\[playing\]"`
    if [ $? -ne 0 ]; then
        NP="Not Playing"
    else
        NP_Paused=`echo "$NP" | grep "\[paused\]"`
        if [ "$NP_Paused" != "" ]; then
            NP=`echo "$NP" | grep -v "\[paused\]"`
            NP="${NP} - [paused]"
            #"sed 's/\[paused\].*/\\\[paused\\\]/'`
        fi
    fi
fi
echo "$NP" | sed 's/"/\\\"/g'
