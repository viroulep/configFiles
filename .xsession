export PATH=$HOME/bin:$HOME/.i3/:$PATH

#Disable this sh*t
xset -b &

#Creating i3 config with correct volume bindings
cat $HOME/.i3/config-base > $HOME/.i3/config

#if which pactl; then
if [ "`hostname`" != "my-laptop" ]; then
    pactl set-sink-volume 0 '40%' &
    cat $HOME/.i3/config-pa >> $HOME/.i3/config;
else
    amixer -q set Master 40% unmute
    cat $HOME/.i3/config-alsa >> $HOME/.i3/config;
fi

exec /usr/bin/i3 --shmlog-size=26214400

