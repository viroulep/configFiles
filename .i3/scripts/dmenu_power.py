#!/usr/bin/env python
# encoding: utf-8
from pydmenu import *
import os

termprefix='urxvt -e '


choices ={
        'lp(lock input)\n':'xtrlock',
        'suspend\n':'setupscreens LVDS-0;i3-msg workspace 10;i3lock -c 111111;sudo pm-suspend;',
        'shutdown\n':'gksudo "shutdown -h now"',
        'lock(lock X)\n':'i3-msg workspace 10; i3lock -d -c 111111',
        'reboot\n':'gksudo "shutdown -r now"'
        }

selection = dmenu(sorted(choices.keys()),  prompt="power management:")
os.system(choices[selection])
