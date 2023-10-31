# KumiteOS Archuseriso Profile

Generates ISO for KumiteOS with customizations.

## Prerequisites
* [Archuseriso](https://github.com/laurent85v/archuseriso)

## Build image
1. Preload ROMs & custom additions to the Fightcade install in the `iso-preload` folder. You may also replace the default wallpaper by including `default_wallpaper.png` in the folder.
2. Run `./bootstrap.sh` to populate the filesystem with your preloaded files and custom additions.
3. Run `sudo aui-mkiso kumiteos --verbose` to generate the ISO. Your file will be found in the `out` folder.

## Create USB Drive with Persistence
After you have built the image:
1. Plug in the USB drive you wish to write to.
2. Find the name of the USB block device by running `lsblk`.
3. Run `sudo aui-mkusb out/kumiteos-X.iso /dev/sdX`.

   Replace `kumiteos-X.iso` with the name of the built image and `/dev/sdX` with the name of the block device for your USB drive.

## How to Use
For instructions on how to use the ISO and set up your profile, follow the steps [here](https://rentry.co/dzzdr). A real web page is coming soon.

## Clean Profile
1. Run `./cleanup.sh` to revert the `kumiteos` profile back to its default state and to delete the generated `work` folder.
