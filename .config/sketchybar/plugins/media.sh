#!/bin/bash

NOW=$(
    osascript <<EOF
tell application "System Events"
  set procs to name of every process
end tell

if procs contains "Spotify" then
  tell application "Spotify"
    if player state is playing then
      return name of current track & " - " & artist of current track
    end if
  end tell
end if
EOF
)

if [ -n "$NOW" ]; then
    sketchybar --set "$NAME" label="$NOW" drawing=on
    exit 0
fi

if command -v spotify_player &>/dev/null; then
    PLAYBACK=$(spotify_player get key playback 2>/dev/null)
    STATE=$(echo "$PLAYBACK" | jq -r '.playback_status')
    TITLE=$(echo "$PLAYBACK" | jq -r '.track.name')
    ARTIST=$(echo "$PLAYBACK" | jq -r '.track.artist.name')
    if [ "$STATE" = "Playing" ]; then
        sketchybar --set "$NAME" label="$TITLE - $ARTIST" drawing=on
        exit 0
    fi
fi

sketchybar --set "$NAME" drawing=off
