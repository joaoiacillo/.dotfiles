#!/usr/bin/env bash
# joaiacillo .dotfiles install - run this script to configure the env

throw() {
	echo "$(basename $0): error: " $@ >&2
	exit 1
}

USER_DIR="${HOME}"

[ -z "${USER_DIR}" ] && throw "empty HOME var"
[ ! -d "$USER_DIR" ] && throw "unexistent user directory"

[ ! -d "$USER_DIR/.local/share/.config" ] && mkdir "$USER_DIR/.local/share/.config"
cp -r config/* $USER_DIR/.config/ &&
[ ! -d "$USER_DIR/.local/share/fonts" ] && mkdir "$USER_DIR/.local/share/fonts"
cp -r fonts/* $USER_DIR/.local/share/fonts

echo Done installing the configuration files.
echo Please read the README for further manual configuration.
