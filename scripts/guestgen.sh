#!/bin/bash
read -p "Enter Guest 1 name " GUEST_1
read -p "Enter Guest 2 name " GUEST_2
echo "$GUEST_1"
echo "$GUEST_2"
invitation_url="https://nirmalkumar-nk.github.io/?GUEST_1=$GUEST_1"
#IF_GUEST_2=${#GUEST_2}
#echo $IF_GUEST_2
if [[ (${#GUEST_2} -gt 1) ]]; then
  invitation_url="$invitation_url&GUEST_2=$GUEST_2"
fi
echo "invitation_url: $invitation_url"
echo "$invitation_url" | pbcopy