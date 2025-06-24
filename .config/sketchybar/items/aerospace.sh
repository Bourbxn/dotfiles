#!/bin/bash

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all | grep -E '^(B|D|T|R)$'); do
    sketchybar --add item space.$sid left \
        --subscribe space.$sid aerospace_workspace_change \
        --set space.$sid \
        icon=$sid \
        label.font="sketchybar-app-font:Regular:10.0" \
        label.padding_right=20 \
        label.y_offset=-1 \
        click_script="aerospace workspace $sid" \
        script="$PLUGIN_DIR/aerospace.sh"
done

sketchybar --add item space_separator left \
    --set space_separator \
    icon="􀆊" \
    icon.color=$ACCENT_COLOR \
    icon.padding_left=4 \
    label.drawing=off \
    background.drawing=off

(
    aerospace list-workspaces --monitor | while read -r line; do
        sketchybar --trigger aerospace_workspace_change
    done
) &
