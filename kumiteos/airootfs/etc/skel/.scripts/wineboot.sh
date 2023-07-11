#!/bin/bash

env `WINEPREFIX="/home/$(whoami)/.wine" WINEARCH="win32" wine "wineboot"`
