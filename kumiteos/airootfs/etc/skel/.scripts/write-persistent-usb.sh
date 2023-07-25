#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"
cd $START_DIR

echo "Select Device to Write KumiteOS (USB Persistent) Image."

select v in `lsblk --nodeps -o NAME -dn`
do
    if ! command -v aui-mkusb &> /dev/null
    then
        sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
        sudo pacman -U --noconfirm /root/packages/archuseriso-0.7.9-1-any.pkg.tar.zst
    fi

	sudo umount --all-targets /dev/${v}
	sudo aui-mkusb kumiteos-latest.iso /dev/${v}
    exit 0
done

