#!/usr/bin/env bash
set -euo pipefail

SUDO=""
if [[ "$(id -u)" -ne 0 ]]; then SUDO="sudo"; fi

copy_config() {
  local src="./.config"
  local dst="$HOME/"

  if [[ ! -e "$src" ]]; then
    echo "Config source not found: $src"
    exit 1
  fi

  echo "| COPYING CONFIG FILES |"
  mkdir -p "$dst"
  cp -rf "$src" "$dst"
  echo "| DONE |"
}

update_system() {
  echo "| UPDATING SYSTEM |"
  $SUDO apt update -y
  $SUDO apt upgrade -y
  echo "| DONE |"
}

install_deps() {
  echo "| INSTALLING DEPENDENCIES |"
  $SUDO apt install -y \
    xorg i3 i3status kitty firefox-esr ranger \
    imagemagick git make gcc feh fonts-font-awesome \
    dmenu tmux
    echo "| DONE |"
}

install_fastfetch() {
  echo "| INSTALLING FASTFETCH |"
  $SUDO apt install fastfetch -y
  echo "| DONE |"
}

main() {
  update_system
  install_deps
  install_fastfetch
  copy_config
  echo "| RESTARTING + RELOADING I3 |"
  i3-msg reload && i3-msg restart || true
}

main "$@"
