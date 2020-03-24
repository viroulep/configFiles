#!/usr/bin/env python
# encoding: utf-8
from pydmenu import *
import os

termprefix='urxvt -e '


choices ={
        'lp(lock input)\n':'xtrlock',
        'suspend\n':'setupscreens eDP1;i3-msg workspace 10;i3lock -c 111111;systemctl suspend;',
        'shutdown\n':'sudo shutdown -h now',
        'lock(lock X)\n':'i3-msg workspace 10; i3lock -d -c 111111',
        'zalock\n':'alock -bg none -auth pam:service=alock',
        'reboot\n':'sudo shutdown -r now'
        }

selection = dmenu(sorted(choices.keys()),  prompt="power management:")
os.system(choices[selection])
