#!/bin/bash

export GDK_BACKEND=x11

PLUG=`date +%s`

yad --form \
    --plug=$PLUG \
    --tabnum=1 \
    --field=" Log in to Discord!discord!":fbtn                 "discord" \
    --field=" Test Game Controllers!input-gaming!":fbtn        "wine control joy.cpl" \
    --field=" Open Fightcade!fightcade!":fbtn                  "$HOME/.fightcade2/Fightcade2.sh" \
    --field=" Check Brackets (Challonge)!challonge!":fbtn      "xdg-open https://challonge.com/" \
    --field=" Check Brackets (start.gg)!startgg!":fbtn         "xdg-open https://start.gg/" &

yad --form \
    --plug=$PLUG \
    --tabnum=2 \
    --field=" Use Existing Fightcade ROMs (Live)!start!Points Live Fightcade ROM directories to existing installation":fbtn   "RunInTerminal ${HOME}/.scripts/copy-old-fc-roms.sh" \
    --field=" Copy Existing Fightcade ROMs (Persistent)!archive!Copies ROMs from existing Fightcade installation":fbtn   "RunInTerminal ${HOME}/.scripts/copy-old-fc-roms.sh" \
    --field=" Set Root &amp; Live User Passwords!password-manager!Password protect your persistent installation":fbtn   "RunInTerminal ${HOME}/.scripts/change-pws.sh" \
    --field=" Reset Wine Profile!wine!Removes current Wine configuration":fbtn  "RunInTerminal rm -rf ~/.wine" \
    --field=" Install DXVK!colors-chromagreen!Enables Vulkan-based implementation of Direct3D.":fbtn     "RunInTerminal ${HOME}/.scripts/install-dxvk.sh" \
    --field=" Enable Gallium Nine!colors-chromablue!Enabled by default. Toggle to re-enable after profile reset.":fbtn    "RunInTerminal wine ninewinecfg -e" &

yad --form \
    --plug=$PLUG \
    --tabnum=3 \
    --field=" Select Existing KumiteOS ISO!media-cdrom!Select existing KumiteOS ISO file for writing":fbtn    "RunInTerminal ${HOME}/.scripts/select-existing-iso.sh" \
    --field=" Download Latest KumiteOS ISO!download!":fbtn    "RunInTerminal ${HOME}/.scripts/get-latest-iso.sh" \
    --field=" Open Partition Manager!gparted!":fbtn    "gparted" \
    --field=" Write ISO to USB Drive (Live w/ Persistence)!media-flash-memory-stick!":fbtn    "RunInTerminal ${HOME}/.scripts/write-persistent-usb.sh" &

cmd=(yad \
    --notebook \
    --title="Welcome to KumiteOS" \
    --window-icon="$HOME/.local/share/icons/kumite_fist.png"\
    --key=$PLUG \
    --tab="Tournament Check-in" \
    --tab="Common Tasks" \
    --tab="Create Media" \
    --tab-pos=top \
    --button="Close!exit":1)

"${cmd[@]}"

