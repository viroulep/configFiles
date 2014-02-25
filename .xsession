export PATH=$HOME/bin:$HOME/.i3/scripts:/usr/local/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
#Python path for YCM
export PYTHONPATH=$HOME/.i3/scripts:$PYTHON_PATH

#No core files
ulimit -c 0

[ -x .xresume ] && "./.xresume"

#Initialize sound
amixer -q set Master 40% unmute

#Start urxvt daemon
urxvtd -q -f -o



exec /usr/local/bin/i3 --shmlog-size=26214400
#exec $HOME/local/bin/i3 --shmlog-size=26214400
