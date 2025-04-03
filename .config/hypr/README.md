# Hyprland presets

I've decided to make my Hyprland settings more configurable through presets, which contain their dedicated color palettes and wallpapers.

## Preset structure

Each preset folder will contain these files:

* `colors.conf`: Color palettes configuration
* `lockscreen.png`: The lockscreen image file.
* `wallpaper.png`: The wallpaper image file. An image with darker background/lower opacity is recommended.

Due to licensing & copyright issues, I can't provide the exact wallpaper and lockscreen here, and you have to find it yourself.

`.lockscreen.png_` and `.wallpaper.png_` is just a placeholder, you can safely delete these two files.

## Configuration

Just open `general.conf` and change the `$preset` variable and `HYPRLAND_PRESET` environment variable to change the preset. Just make sure that a folder with the same name containing all required files exist in this `hypr` folder.

After that, use `hyprctl reload` to reload the Hyprland configuration. If the wallpaper doesn't change, rerun Hyprland again.