export PATH=$HOME/bin:$HOME/.i3/:$PATH

#No core files
ulimit -c 0

#Disable this sh*t
xset -b &

#Initialize sound
amixer -q set Master 40% unmute

#Start urxvt daemon
urxvtd -q -f -o

exec /usr/local/bin/i3 --shmlog-size=26214400
#exec $HOME/local/bin/i3 --shmlog-size=26214400
