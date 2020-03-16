#!/bin/bash

playerctl -p spotify -F status 2>/dev/null | while read status; do
  if [[ $status == "" ]]; then
    echo ""
  else
    if [[ $1 == "previous" ]]; then
      echo ""
    elif [[ $1 == "stop" ]]; then
      echo ""
    elif [[ $1 == "next" ]]; then
      echo ""
    elif [[ $1 == "play-pause" ]]; then
      if [[ $status == "Playing" ]]; then
        echo ""
      else
        echo ""
      fi
    else
      echo ""
    fi
  fi
done
