#!/bin/bash

# open .
MODE=$(aerospace list-modes --current)

if [ -z "$MODE" ]; then
    MODE="main"
fi

case $MODE in
main)
    ICON="􂧰"
    LABEL="M"
    ;;
floating)
    ICON="􀥝"
    LABEL="F"
    ;;
service)
    ICON="􀥁"
    LABEL="S"
    ;;
*)
    ICON="􀃬"
    LABEL="U"
    ;;
esac

sketchybar --set aerospace_mode icon="$ICON" label="$LABEL"
