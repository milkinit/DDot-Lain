# Serial Experiments Lain Dotfiles

A lightweight Debian-based desktop environment inspired by *Serial Experiments Lain*.

This repository contains configuration files, themes, scripts, and tools for creating a minimal Lain-themed Linux setup using the i3 window manager.

## Project Structure
```
lain-dotfiles/
├── install.sh
├── LICENSE
├── README.md
├── .config/
└── grub-theme/
    ├── install.sh
    ├── theme.txt
    ├── background.png
    └── ...
```

## Features

- Lightweight Xorg desktop environment
- i3 window manager
- Lain-inspired terminal and desktop appearance
- Kitty terminal emulator
- Dmenu application launcher
- i3status system information bar
- Ranger terminal file manager
- Feh wallpaper support
- Tmux terminal multiplexer
- Installation script for Debian-based systems

## Preview
<img width="49%" height="798" alt="image" src="https://github.com/user-attachments/assets/d99775f5-f13a-4e0d-b915-9cb549fe6406" /> <img width="49%" height="797" alt="image" src="https://github.com/user-attachments/assets/5f0d49c0-39d0-41ff-a2fc-6a50c9856528" />


## Requirements

This setup is intended for:

- Debian
- Debian-based Linux distributions
- A fresh or minimal installation
- An active internet connection
- A user account with `sudo` privileges

The installer uses `apt` to install the required packages.

## Included Packages

The installation script installs the following tools:

- `xorg` — graphical display server
- `i3` — lightweight window manager
- `i3status` — system information bar for i3
- `kitty` — terminal emulator
- `firefox-esr` — extended-support web browser
- `ranger` — terminal file manager
- `git` — version control system
- `feh` — image viewer and wallpaper setter
- `fonts-font-awesome` — icon fonts
- `dmenu` — application launcher
- `tmux` — terminal multiplexer

## Installation

Clone this repository:

```bash
git clone https://github.com/milkinit/Lain-Dotfiles.git && cd Lain-Dotfiles && ./install.sh
```
