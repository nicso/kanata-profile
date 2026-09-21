#!/bin/bash
# Lance les deux instances kanata pour le profil micropc.
# Niri doit être en layout Ergol (fr/ergol) pour que le remapping others.kbd soit correct.

kanata --cfg ~/.config/kanata-profile/micropc/wacom.kbd &
WACOM_PID=$!

kanata --cfg ~/.config/kanata-profile/micropc/others.kbd &
OTHERS_PID=$!

echo "kanata micropc lancé (wacom: $WACOM_PID, others: $OTHERS_PID)"
wait
