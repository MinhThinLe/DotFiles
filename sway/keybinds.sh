### Key bindings
#
# Basics:
#
# Start a terminal

# Kill focused window
bindsym $mod+c kill

bindsym $mod+Return             exec $term
bindsym $mod+d                  exec $menu
bindsym $mod+n                  exec $notif_center
bindsym Print                   exec $screenshot
bindsym $mod+p                  exec $powermenu
bindsym $mod+z                  exec $clipboard_man
bindsym $mod+backslash          exec $calculator
bindsym $mod+Shift+s            exec $display_configurator

# Change volume
bindsym XF86AudioLowerVolume    exec pactl set-sink-volume @DEFAULT_SINK@ -5%
bindsym XF86AudioRaiseVolume    exec pactl set-sink-volume @DEFAULT_SINK@ +5%
bindsym XF86AudioMute           exec pactl set-sink-mute alsa_output.pci-0000_00_1f.3.analog-stereo toggle 
bindsym XF86AudioMicMute        exec pactl set-source-mute alsa_input.pci-0000_00_1f.3.analog-stereo toggle 
bindsym XF86MonBrightnessDown   exec brightnessctl set 5%-
bindsym XF86MonBrightnessUp     exec brightnessctl set +5%

# Drag floating windows by holding down $mod and left mouse button.
# Resize them with right mouse button + $mod.
# Despite the name, also works for non-floating windows.
# Change normal to inverse to use left mouse button for resizing and right
# mouse button for dragging.
floating_modifier $mod normal

# Reload the configuration file
bindsym $mod+Shift+r reload

# Exit sway (logs you out of your Wayland session)
bindsym $mod+Shift+e exec swaynag -t warning -m 'Veux-tu vraiment quitter Sway?' -B 'Oui, quitter Sway' 'swaymsg exit'
#
# Moving around:
#
# Move your focus around
bindsym $mod+$left focus left
bindsym $mod+$down focus down
bindsym $mod+$up focus up
bindsym $mod+$right focus right
# Or use $mod+[up|down|left|right]
bindsym $mod+Left focus left
bindsym $mod+Down focus down
bindsym $mod+Up focus up
bindsym $mod+Right focus right

# Move the focused window with the same, but add Shift
bindsym $mod+Shift+$left move left
bindsym $mod+Shift+$down move down
bindsym $mod+Shift+$up move up
bindsym $mod+Shift+$right move right
# Ditto, with arrow keys
bindsym $mod+Shift+Left move left
bindsym $mod+Shift+Down move down
bindsym $mod+Shift+Up move up
bindsym $mod+Shift+Right move right
#
# Workspaces:
#
# Switch to workspace
bindsym $mod+1 workspace number 1
bindsym $mod+2 workspace number 2
bindsym $mod+3 workspace number 3
bindsym $mod+4 workspace number 4
bindsym $mod+5 workspace number 5
bindsym $mod+6 workspace number 6
bindsym $mod+7 workspace number 7
bindsym $mod+8 workspace number 8
bindsym $mod+9 workspace number 9
bindsym $mod+0 workspace number 10
# Move focused container to workspace
bindsym $mod+Shift+1 move container to workspace number 1
bindsym $mod+Shift+2 move container to workspace number 2
bindsym $mod+Shift+3 move container to workspace number 3
bindsym $mod+Shift+4 move container to workspace number 4
bindsym $mod+Shift+5 move container to workspace number 5
bindsym $mod+Shift+6 move container to workspace number 6
bindsym $mod+Shift+7 move container to workspace number 7
bindsym $mod+Shift+8 move container to workspace number 8
bindsym $mod+Shift+9 move container to workspace number 9
bindsym $mod+Shift+0 move container to workspace number 10
# Note: workspaces can have any name you want, not just numbers.
# We just use 1-10 as the default.
#
# Layout stuff:
#
# You can "split" the current object of your focus with
# $mod+b or $mod+v, for horizontal and vertical splits
# respectively.
bindsym $mod+b splith
bindsym $mod+v splitv

# Switch the current container between different layout styles
bindsym $mod+t layout tabbed
bindsym $mod+s layout toggle split

# Make the current focus fullscreen
bindsym $mod+f fullscreen

# Toggle the current focus between tiling and floating mode
bindsym $mod+Ctrl+space floating toggle

# Swap focus between the tiling area and the floating area
bindsym $mod+space focus mode_toggle

# Move focus to the parent container
bindsym $mod+a focus parent
#
# Scratchpad:
#
# Sway has a "scratchpad", which is a bag of holding for windows.
# You can send windows there and get them back later.

# Move the currently focused window to the scratchpad
bindsym $mod+Shift+q move scratchpad

# Show the next scratchpad window or hide the focused scratchpad window.
# If there are multiple scratchpad windows, this command cycles through them.
bindsym $mod+q scratchpad show
#
# Resizing containers:
#
mode "resize" {
    # left will shrink the containers width
    # right will grow the containers width
    # up will shrink the containers height
    # down will grow the containers height
    bindsym $left resize shrink width 10px
    bindsym $down resize grow height 10px
    bindsym $up resize shrink height 10px
    bindsym $right resize grow width 10px

    # Ditto, with arrow keys
    bindsym Left resize shrink width 10px
    bindsym Down resize grow height 10px
    bindsym Up resize shrink height 10px
    bindsym Right resize grow width 10px

    # Return to default mode
    bindsym Return mode "default"
    bindsym Escape mode "default"
}
bindsym $mod+r mode "resize"
