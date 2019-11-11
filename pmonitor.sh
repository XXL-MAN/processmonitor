#!/bin/bash

#help
if [ -z "$1" ]
  then
    echo "USAGE: pmonitor [STRING TO IDENTIFY PROCESS] [FULL COMMAND TO RELAUNCH PROCESS]"
    exit 0
fi

#CUSTOM VARS
bot_apikey=$"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
chat_id=$"XXXXXXXXXXXX"

#url
url=$"https://api.telegram.org/bot"
compose=$"/sendMessage?chat_id="
textcompose=$"&text="
date=$(date)

salida=$(ps -fe | grep $1  | grep -v grep | grep -v $0 | wc -l )
if [ $salida -ge 1 ]; then
  text=$1" Program OK - "$(date)
  #echo "Process is running."
  url=$url$bot_apikey$compose$chat_id$textcompose$text
  wget --spider "$url" -q
else
  text=$1" Program Status : relaunch - "$(date)
  #echo "Process is not running."
  url=$url$bot_apikey$compose$chat_id$textcompose$text
  wget --spider "$url" -q
  eval $2
fi
