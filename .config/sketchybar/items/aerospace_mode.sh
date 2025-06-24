#!/bin/bash

sketchybar --add event aerospace_mode_change

sketchybar --add item aerospace_mode right \
    --set aerospace_mode \
    script="$PLUGIN_DIR/aerospace_mode.sh" \
    --subscribe aerospace_mode aerospace_mode_change
