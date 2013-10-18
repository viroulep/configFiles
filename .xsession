export PATH=$HOME/bin:$HOME/.i3/scripts:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

#No core files
ulimit -c 0


#some more practical keys
xmodmap -e 'keycode  24 = a A a A less adiaeresis acircumflex adiaeresis a A acircumflex adiaeresis'
xmodmap -e 'keycode  27 = r R r R greater Ccedilla ccedilla Ccedilla r R ccedilla Ccedilla'
xmodmap -e 'keycode  39 = s S s S parenleft Oslash oslash'
xmodmap -e 'keycode  40 = d D d D bracketleft Ediaeresis Ecircumflex'
xmodmap -e 'keycode  41 = f F f F bracketright ordfeminine plusminus'
xmodmap -e 'keycode  42 = g G g G parenright AE ae'
xmodmap -e 'keycode  54 = c C c C braceleft copyright copyright'
xmodmap -e 'keycode  55 = v V v V braceright leftsinglequotemark registered'
#Map win key to F6
xmodmap -e 'keycode 133 = F6 NoSymbol Super_L NoSymbol Super_L Super_L'

#Disable this sh*t
xset b off

#Initialize sound
amixer -q set Master 40% unmute

#Start urxvt daemon
urxvtd -q -f -o



exec /usr/local/bin/i3 --shmlog-size=26214400
#exec $HOME/local/bin/i3 --shmlog-size=26214400
