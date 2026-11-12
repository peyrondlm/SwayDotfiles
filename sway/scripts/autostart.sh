#!/bin/sh
# Sway autostart.

# Notifications
pgrep -x dunst >/dev/null || dunst -config "$HOME/.config/sway/dunst/dunstrc" &

# PolicyKit agent
pgrep -x lxpolkit >/dev/null || lxpolkit &

# Tray applets
pgrep -x nm-applet >/dev/null || nm-applet &
pgrep -x blueman-applet >/dev/null || blueman-applet &

# Clipboard manager
if ! pgrep -x wl-paste >/dev/null; then
  wl-paste --watch cliphist store &
fi

# First-login welcome (shown once, dismissable)
if [ ! -f "$HOME/.cache/sway/welcomed" ]; then
  mkdir -p "$HOME/.cache/sway"
  touch "$HOME/.cache/sway/welcomed"
  (
    sleep 3
    notify-send -u normal -t 15000 \
      "Welcome to Sway" \
      "Press Super + / anytime to see all keybindings."
  ) &
fi
