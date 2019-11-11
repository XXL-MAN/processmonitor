#!/bin/bash


#help
if [ -z "$1" ]
  then
    echo "USAGE: prunning [STRING TO IDENTIFY PROCESS]"
    exit 0
fi


salida=$(ps -fe | grep $1  | grep -v grep | grep -v $0 | wc -l )
if [ $salida -ge 1 ]; then
  echo "Process is running."
else
  echo "Process is not running."
fi
