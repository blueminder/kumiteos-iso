#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"
cd $START_DIR

echo "Select Device to Write KumiteOS (USB Persistent) Image."

select v in `lsblk --nodeps -o NAME -dn`
do
	sudo umount --all-targets /dev/${v}
	sudo aui-mkusb kumiteos-latest.iso /dev/${v}
    exit 0
done

