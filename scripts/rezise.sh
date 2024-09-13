# Get the size of the primary monitor (e.g. HDMI-1)
monitor_size=$(xrandr | grep "primary" | awk '{print $4}')
# Divide the size into width and height
width=$(echo $monitor_size | cut -d'x' -f1)
height=$(echo $monitor_size | cut -d'x' -f2)
# Calculate the coordinates to center the window on the monitor
x_pos=$((($width - 1050) / 2))  # Adjust the desired width (800)
y_pos=$((($height - 600) / 2))  # Set the desired height (600)

# Open the Kitty window in floating mode with the calculated coordinates
bspc node -t floating -g hidden=off
xdotool search --classname Kitty windowsize %@ 1050 600
xdotool search --classname Kitty windowmove %@ $x_pos $y_pos
