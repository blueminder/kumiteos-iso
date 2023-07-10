# KumiteOS Archuseriso Profile

Generates ISO for KumiteOS with customizations.

## Prerequisites
* [Archuseriso](https://github.com/laurent85v/archuseriso)

## Build image
1. Preload ROMs & custom additions to the Fightcade install in the `iso-preload` folder. You may also replace the default wallpaper by including `default_wallpaper.png` in the folder.
2. Run `./bootstrap.sh` to populate the filesystem with your preloaded files and custom additions.
3. Run `sudo aui-mkiso kumiteos --verbose` to generate the ISO. Your file will be found in the `out` folder.

## Clean Profile
1. Run `./cleanup.sh` to revert the `kumiteos` profile back to its default state and to delete the generated `work` folder.
