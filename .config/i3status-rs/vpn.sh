#!/bin/bash

print_json() {
  echo "{\"text\":\"$1\",\"state\":\"$2\"}"
}

if [ -d /proc/sys/net/ipv4/conf/tun0 ]; then
  print_json "on" "Good"
else
  print_json "off" "Critical"
fi
