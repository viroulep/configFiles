#!/bin/bash
 
# SETTINGS
NOW_PLAYING_PIPE="$HOME/now-playing"
 
 
title=""
artist=""
stat="stopped"
url=""
 
while [ "$1" '!=' "" ]
do
	case "$1" in
		title)
			title="$2"
		;;
		artist)
			artist="$2"
		;;
		status)
			stat="$2"
		;;
		file)
			file="$2"
		;;
		url)
			url="$2"
		;;
		*)
		;;
	esac
	shift
	shift
done
 
msg=""
if [ "$stat" '=' 'stopped' ]
then
	msg=""
else
	if [ -n "$artist" ]
	then
		msg="$artist -"
	fi
	if [ -n "$title" ]
	then
		msg="$msg $title"
	else
		if [ -n "$file" ]
		then
			msg="$msg `basename "$file"`"
		else
			msg="$msg <noname>"
		fi
	fi
 
	if [ "$stat" '=' 'paused' ]
	then
		msg="$msg [paused]"
	fi
 
fi
 
echo "$msg" > "$NOW_PLAYING_PIPE"
