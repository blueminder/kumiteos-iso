#!/bin/bash

START_DIR="$( dirname -- "$( readlink -f -- "$0"; )"; )"
cd $START_DIR

LATEST_ISO=`curl https://kumite.s3.nl-ams.scw.cloud/KUMITEOS_LATEST_ISO`
wget "https://kumite.s3.nl-ams.scw.cloud/${LATEST_ISO}"
mv $LATEST_ISO kumiteos-latest.iso

