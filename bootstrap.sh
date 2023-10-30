#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"

cd "${START_DIR}/kumiteos/airootfs/etc/skel"
wget "https://web.fightcade.com/download/Fightcade-linux-latest.tar.gz"
tar zxvf Fightcade-linux-latest.tar.gz
mv Fightcade .fightcade2
rm Fightcade-linux-latest.tar.gz

cd "${START_DIR}/kumiteos/airootfs/etc/skel/.fightcade2/fc2-electron/resources/app/inject"
wget "https://raw.githubusercontent.com/blueminder/fightcade-joystick-kb-controls/main/inject.js"

cd "${START_DIR}/kumiteos/airootfs/etc/skel/.fightcade2/emulator/flycast"
wget "https://github.com/blueminder/flycast-dojo/releases/download/dojo-6.6/linux-flycast-dojo-6.6.zip"
unzip linux-flycast-dojo-6.6.zip
chmod +x flycast-dojo-x86_64.AppImage
rm linux-flycast-dojo-6.6.zip

cp -a "${START_DIR}/iso-preload/Fightcade/." "${START_DIR}/kumiteos/airootfs/etc/skel/.fightcade2/"

if test -f "${START_DIR}/iso-preload/default_wallpaper.png"; then
    cp "${START_DIR}/iso-preload/default_wallpaper.png" "${START_DIR}/kumiteos/airootfs/usr/local/share/wallpapers/default_wallpaper.png"
fi

