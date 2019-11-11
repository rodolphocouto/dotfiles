#!/bin/sh
if [ $(bluetoothctl show | grep "Powered: yes" | wc -c) -eq 0 ]
then
  echo ""
else
  if [ $(echo info | bluetoothctl | grep 'Device' | wc -c) -eq 0 ]
  then
    echo ""
  else
    device=$(bluetoothctl devices | cut -c 26-100)
    echo "%{F#66ffffff} %{F-} $device"
  fi
fi
