#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"
cd $START_DIR

echo "Select Hard Drive to Write KumiteOS Image."

select v in `lsblk --nodeps -o NAME -dn`
do
    if ! command -v aui-mkhybrid &> /dev/null
    then
        sudo reflector --latest 5 --sort rate --save /etc/pacman.d/mirrorlist
        sudo pacman -U --noconfirm /root/packages/archuseriso-0.7.9-1-any.pkg.tar.zst
    fi

	sudo aui-mkhybrid kumiteos-latest.iso /dev/${v}
    exit 0
done

