export PATH=$HOME/bin:$PATH
xset -b &
pactl set-sink-volume 0 '40%' &
exec /usr/bin/i3

