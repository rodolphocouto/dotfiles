#!/bin/sh

if [ $(pactl list cards | grep "Active Profile: headset-head-unit-msbc" | wc -c) -ne 0 ]; then
  pactl set-card-profile bluez_card.88_C9_E8_79_D8_88 a2dp-sink-ldac
else
  pactl set-card-profile bluez_card.88_C9_E8_79_D8_88 headset-head-unit-msbc
fi
