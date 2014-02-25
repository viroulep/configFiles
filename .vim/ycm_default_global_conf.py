import sys
import ycm_sys_conf as conf
from os.path import expanduser

homeDir = expanduser("~")

#Default for project is C files
conf.flags += ['-std=c99', '-x', 'c']
conf.flags += [
'-Wall',
'-Wextra',
'-fexceptions',
'-I',
homeDir + '/local/include',
'-I',
'.',
]

FlagsForFile = conf.FlagsForFile
