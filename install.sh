#!/usr/bin/env bash
# joaiacillo .dotfiles install - run this script to configure the env

throw() {
	echo "install.sh: error: " $@
	exit 1
}

USER_DIR="$1"

test -z "$USER_DIR" && throw "user directory not provided. aborting"
test ! -d "$USER_DIR" && throw "unexistent user directory"

## Steps
# 1. Copy config/* into $USER_DIR/.config/
# 2. Copy local/* into $USER_DIR/.local/
# 3. Copy wallpapers/* into $USER_DIR/Pictures

cp -r config/* $USER_DIR/.config/ &&
cp -r local/* $USER_DIR/.local/ &&
cp -r wallpapers/* $USER_DIR/Pictures/ &&

echo Done.
