#!/bin/sh

if [ $(pactl list cards | grep "Active Profile: headset-head-unit-msbc" | wc -c) -ne 0 ]; then
  pactl set-card-profile bluez_card.14_3F_A6_E2_B5_A4 a2dp-sink-sbc
else
  pactl set-card-profile bluez_card.14_3F_A6_E2_B5_A4 headset-head-unit-msbc
fi
