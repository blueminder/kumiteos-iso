#!/bin/bash
FCDIR="${HOME}/.fightcade2"
OLDFCDIR=$(yad --file --title="Select Fightcade Directory")
EMULATORS="fbneo
flycast
ggpofba
snes9x"
for emu in $EMULATORS
do
    if [ -L "${FCDIR}/emulator/${emu}/ROMs" ]
    then
        unlink "${FCDIR}/emulator/${emu}/ROMs"
        mkdir "${FCDIR}/emulator/${emu}/ROMs"
    fi
    if [ -d "${OLDFCDIR}/emulator/${emu}/ROMs" ] 
    then
        cp -R "${OLDFCDIR}/emulator/${emu}/ROMs/." "${FCDIR}/emulator/${emu}/ROMs"
    fi
done

