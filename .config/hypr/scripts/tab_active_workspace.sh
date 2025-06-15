#!/bin/bash

# Get a list of all active workspaces
# 'monitoractive' gets the active monitor
# 'workspaces' gets all workspaces
# 'awk' filters for workspaces with windows or which are currently active
# 'sort -n' sorts numerically
active_workspaces=$(hyprctl workspaces -j | jq -r '.[].id | select(. != 0)' | sort -n | uniq)

current_workspace=$(hyprctl activeworkspace -j | jq -r '.id')

direction="$1" # 'next' or 'prev'

next_workspace=""
prev_workspace=""

# Convert string of active workspaces into an array
readarray -t workspace_array <<< "$active_workspaces"

# Find the current workspace's index in the array
current_index=-1
for i in "${!workspace_array[@]}"; do
    if [[ "${workspace_array[$i]}" == "$current_workspace" ]]; then
        current_index="$i"
        break
    fi
done

if [[ "$current_index" -eq -1 ]]; then
    # Current workspace is not in the list of active workspaces (e.g., empty)
    # Just switch to the first active workspace
    if [[ "${#workspace_array[@]}" -gt 0 ]]; then
        hyprctl dispatch workspace "${workspace_array[0]}"
    fi
    exit 0
fi

if [[ "$direction" == "next" ]]; then
    if [[ "$((current_index + 1))" -lt "${#workspace_array[@]}" ]]; then
        next_workspace="${workspace_array[$((current_index + 1))]}"
    else
        # Wrap around to the first active workspace
        next_workspace="${workspace_array[0]}"
    fi
    hyprctl dispatch workspace "$next_workspace"
elif [[ "$direction" == "prev" ]]; then
    if [[ "$((current_index - 1))" -ge 0 ]]; then
        prev_workspace="${workspace_array[$((current_index - 1))]}"
    else
        # Wrap around to the last active workspace
        prev_workspace="${workspace_array[${#workspace_array[@]} - 1]}"
    fi
    hyprctl dispatch workspace "$prev_workspace"
fi
