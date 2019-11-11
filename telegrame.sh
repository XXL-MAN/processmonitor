#!/bin/bash

#help
if [ -z "$1" ]
  then
    echo "USAGE: telegrame [STRING TO SEND VIA TELEGRAM]"
    exit 0
fi

#CUSTOM VARS
bot_apikey=$"XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX"
chat_id=$"XXXXXXXXXXXXXXX"

#url
url=$"https://api.telegram.org/bot"
compose=$"/sendMessage?chat_id="
textcompose=$"&text="
date=$(date)


#Sending Telegram Query
text=$1
url=$url$bot_apikey$compose$chat_id$textcompose$text
wget --spider "$url" -q







