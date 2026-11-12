#!/bin/bash

systemctl --user stop sway-session.target 2>/dev/null || true

for p in waybar dunst nm-applet blueman-applet wl-paste swaybg; do
  pkill -x "$p" 2>/dev/null || true
done

swaymsg exit
