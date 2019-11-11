#!/bin/bash

# RETURNS 0 IF NOT PROCESS FOUND AND 1 IF PROCESS FOUND ON CONSOLE AND SYSTEM EXIT CODE

#help
if [ -z "$1" ]
  then
    echo "USAGE: prunning [STRING TO IDENTIFY PROCESS]"
    exit 0
fi


salida=$(ps -fe | grep $1  | grep -v grep | grep -v $0 | wc -l )
if [ $salida -ge 1 ]; then
  echo "1"
  exit 1
else
  echo "0"
  exit 0
fi
