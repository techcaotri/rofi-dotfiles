#!/bin/bash

if [ "$@" ]
then
	pid=$(echo -e "$@" | grep -o "^'.'" | tr -d "'")
	# echo "$pid" | xclip -rmlastnl -selection clipboard
  echo -n "$pid" | xsel --clipboard --input
  exit
else
  uni -c p all     
fi
