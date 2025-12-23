#!/bin/bash

# 1. Get the profile name from the first argument, or use "Dracula" as default
PROFILE_NAME="${1:-Dracula}"

# 2. Generate a unique ID for the profile
PROFILE_ID=$(uuidgen)

# 3. Set the dconf path for the new profile
PROFILE_PATH="/org/gnome/terminal/legacy/profiles:/:$PROFILE_ID/"

# 4. Create the profile and set the visible name
dconf write "${PROFILE_PATH}visible-name" "'$PROFILE_NAME'"

# 5. Get current profiles, clean the string and add the new one to the list
CURRENT_PROFILES=$(dconf read /org/gnome/terminal/legacy/profiles:/list | tr -d "[]" | sed "s/'//g" | sed "s/ //g")

if [ -z "$CURRENT_PROFILES" ]; then
    NEW_LIST="['$PROFILE_ID']"
else
    # Format the list back into ['id1', 'id2', 'new_id']
    FORMATTED_LIST=$(echo "$CURRENT_PROFILES" | sed "s/,/','/g")
    NEW_LIST="['$FORMATTED_LIST', '$PROFILE_ID']"
fi

# 6. Update the profile list in dconf
dconf write /org/gnome/terminal/legacy/profiles:/list "$NEW_LIST"

echo "Success: Profile '$PROFILE_NAME' created with ID: $PROFILE_ID"
