#!/usr/bin/env bash
# Controls the volume of an application or Bluetooth device in fixed increments.

# Usage:
#    ./app_volume_control.sh <appname|device> <up|down|mute>
#
# Settings:
#    - STEP: Step size in percent (e.g., 2, 5, 10)
#    - MAX / MIN: upper/lower volume limit
#
# CLI-Tip:
#     - Find out app names:
#         pw-cli ls Node



APP="$1"
ACTION="$2"

# ------------------- Settings -------------------
STEP=2        # Step size in %
MAX=100
MIN=2
# ------------------------------------------------

if [ -z "$APP" ] || [ -z "$ACTION" ]; then
    echo "Usage: $0 <appname> <up|down|mute>"
    exit 1
fi


# Find PipeWire nodes that match the app name
find_nodes() {
    pw-cli list-objects Node | awk -v app="$APP" '
        /id [0-9]+/ {id=$2; mc=""; an=""; nd=""}
        /media.class/ {mc=$0}
        /application.name/ {an=$0}
        /node.description/ {nd=$0}
        # Apps: APP without spaces -> match application.name
        (app !~ /[ _]/) {
            if (id && index(tolower(an), tolower(app))>0 && mc ~ /Stream\/Output\/Audio/) print id
        }
        # Devices: APP with space/underscore -> match node.description
        (app ~ /[ _]/) {
            if (id && index(tolower(nd), tolower(app))>0 && mc ~ /Stream\/(Output|Input)\/Audio/) print id
        }
    ' | sort -u | tr -d ',' | tr -d ' '
}

get_volume() {
    local node="$1"
    # Extract only the first number, remove all non-numbers
    vol=$(wpctl get-volume "$node" 2>/dev/null | grep -oE '[0-9]*\.[0-9]+' | head -n1)

    # Fallback if empty
    if [[ -z "$vol" ]]; then
        vol=0
    fi

    # convert to percent
    pct=$(awk -v v="$vol" 'BEGIN { printf "%.0f", v*100 }')
    echo "$pct"
}

set_volume() {
    local node="$1"
    local percent="$2"

    if [ "$percent" -lt "$MIN" ]; then percent=$MIN; fi
    if [ "$percent" -gt "$MAX" ]; then percent=$MAX; fi

    linear=$(echo "scale=3; $percent / 100" | bc -l)
    wpctl set-volume "$node" "$linear" >/dev/null 2>&1
}

adjust_volume() {
    local node="$1"

    if [ "$ACTION" = "mute" ]; then
        wpctl set-mute "$node" toggle
        echo "Node $node: mute toggled"
        return
    fi

    current=$(get_volume "$node")

    # Jump to the next STEP
    if [ "$ACTION" = "up" ]; then
        new=$((current + STEP))
    else
        new=$((current - STEP))
    fi

    set_volume "$node" "$new"
    final=$(get_volume "$node")
    echo "Node $node Volume: ${final}%"
}

# ---------------- MAIN ----------------

NODES=$(find_nodes)

if [ -z "$NODES" ]; then
    echo "No audio nodes found for: $APP"
    exit 1
fi

echo "Nodes found: $NODES"

for N in $NODES; do
    adjust_volume "$N"
done
