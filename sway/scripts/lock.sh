#!/bin/bash
[ "$1" = "--pause" ] && timeout 3 playerctl pause --all-players 2>/dev/null
swaylock -f -c 1a1a1a --show-failed-attempts
