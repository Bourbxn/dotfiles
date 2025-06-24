#!/bin/bash
source "$CONFIG_DIR/colors.sh" # Loads all defined colors

if [ "$SENDER" = "aerospace_workspace_change" ]; then
    workspace=$(echo "$NAME" | sed 's/space\.//')

    # Get current focused workspace
    focused_workspace=$(aerospace list-workspaces --focused)

    # Get apps in this workspace
    apps=$(aerospace list-windows --workspace "$workspace" --format "%{app-name}" 2>/dev/null | sort -u)

    icon_strip=" "
    if [ -n "$apps" ] && [ "$apps" != "" ]; then
        while IFS= read -r app; do
            if [ -n "$app" ] && [ "$app" != "" ]; then
                icon="$($CONFIG_DIR/plugins/icon_map_fn.sh "$app" 2>/dev/null)"
                if [ -n "$icon" ]; then
                    icon_strip+="$icon"
                fi
            fi
        done <<<"$apps"
    else
        icon_strip=" —"
    fi

    # Update label first
    sketchybar --set space.$workspace label="$icon_strip"

    # Set colors based on focus state
    if [ "$workspace" = "$focused_workspace" ]; then
        sketchybar --set space.$workspace \
            background.drawing=on \
            background.color=$ACCENT_COLOR \
            label.color=$BAR_COLOR \
            icon.color=$BAR_COLOR
    else
        sketchybar --set space.$workspace \
            background.drawing=off \
            label.color=$ACCENT_COLOR \
            icon.color=$ACCENT_COLOR
    fi
fi
