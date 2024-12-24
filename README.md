# dotfiles
This repository contains configurations for various programs for macOS and Arch Linux.
Configurations specific to each OS are in their respective folders. The others are common configurations.

*Each OS should have an installation script to automate the installation of configuration files, dependencies and more, however it is not yet ready.*

The Neovim configuration can be found at [nvim](https://github.com/IvoCostaCunha/nvim) for now.

## Dependencies
These dependencies aren't used by all the configurations, they are specific to each one.
Not all break configurations due to fallbacks, but to achieve the expected result it is better to have them installed beforehand.

## ArchLinux
This Linux configuration uses [i3](https://i3wm.org) as window manager and i3 has several dependencies.
### i3 dependencies
- [Alacritty](https://alacritty.org/) - Set by i3 as terminal.
- [feh](https://feh.finalrewind.org/) - Used by i3 to setup a background image. (feh uses ~/images/aurore-boreale.jpg as background for now.)
- [rofi](https://github.com/davatorium/rofi) - Used by i3 as an application/file finder.
- [picom](https://github.com/yshui/picom) - Used as extra by i3 for rounded window corners.
- [Pulse Audio](https://www.freedesktop.org/wiki/Software/PulseAudio/) - Audio signal manager used i3 for audio settings.

## Fonts
- [Hack](https://github.com/source-foundry/Hack) - Used by [kitty](https://sw.kovidgoyal.net/kitty).
- [Roboto](https://www.dafont.com/roboto.font) - Used by i3 (ArchLinux).
