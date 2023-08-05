#!/bin/bash
FCDIR="${HOME}/.fightcade2"
OLDFCDIR=$(yad --file --title="Select Fightcade Directory" --width=800 --height=600)
EMULATORS="fbneo
flycast
ggpofba
snes9x"
if [ -d "${OLDFCDIR}" ]
then
    for emu in $EMULATORS
    do
        if [ -L "${FCDIR}/emulator/${emu}/ROMs" ]
        then
            unlink "${FCDIR}/emulator/${emu}/ROMs"
        fi
        if [ -d "${OLDFCDIR}/emulator/${emu}/ROMs" ]
        then
            rm -rf "${FCDIR}/emulator/${emu}/ROMs"
        fi
        ln -s "${OLDFCDIR}/emulator/${emu}/ROMs" "${FCDIR}/emulator/${emu}/ROMs"
    done
fi
