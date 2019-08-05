#!/bin/bash

player_status=$(playerctl -p spotify status 2>/dev/null)
if [[ $? -eq 0 ]]; then
  metadata="$(playerctl -p spotify metadata artist) - $(playerctl -p spotify metadata title)"
fi

if [[ $player_status == "Playing" ]]; then
  echo "$metadata"
elif [[ $player_status == "Paused" ]]; then
  echo "Paused"
else
  echo "Not connected"
fi
