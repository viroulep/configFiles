#!/usr/bin/env python
# encoding: utf-8
from pydmenu import *
import os

termprefix='urxvt -e '


choices ={
        'lp(lock input)':'xtrlock',
        'suspend':'setupscreens LVDS1;i3-msg workspace 10;i3lock -c 111111;sudo pm-suspend-hybrid;',
        'shutdown':'gksudo "shutdown -h now"',
        'lock(lock X)':'i3-msg workspace 10; i3lock -c 111111',
        'reboot':'gksudo "shutdown -r now"'
        }

selection = dmenu(sorted(choices.keys()),  prompt="power management:")
os.system(choices[selection])
