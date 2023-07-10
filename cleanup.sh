#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"

rm -rf "${START_DIR}/kumiteos/airootfs/etc/skel/.fightcade2"
rm "${START_DIR}/kumiteos/airootfs/usr/local/share/wallpapers/default_wallpaper.png"
cp "${START_DIR}/kumiteos/airootfs/usr/local/share/wallpapers/fightcade.png" "${START_DIR}/kumiteos/airootfs/usr/local/share/wallpapers/default_wallpaper.png"

sudo rm -rf "${START_DIR}/work"

