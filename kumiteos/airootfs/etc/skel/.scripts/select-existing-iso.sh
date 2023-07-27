#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"
cd $START_DIR

LATEST_ISO=$(yad --file --title="Select KumiteOS ISO file")
cp $LATEST_ISO kumiteos-latest.iso

