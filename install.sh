#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

XDG_CONFIG_HOME=${XDG_CONFIG_HOME:-$HOME/.config}
XDG_DATA_HOME=${XDG_DATA_HOME:-$HOME/.local/share}

create_symlink() {
    if [[ $# -ne 2 ]]; then
        echo $FUNCNAME: expect 2 arguments, got $#
        echo usage: $FUNCNAME src dest
        return 1
    fi

    if [[ ! -e $2 ]]; then
        ln -s $1 $2
    else
        echo $2 exists, skipping
    fi
}

# rc files
for file in $(find $SCRIPT_DIR -maxdepth 1 -type f \( \
                -not -name 'README.md'                \
                -and -not -name 'LICENSE'             \
                -and -not -name $(basename "$0")      \
    \)); do

    create_symlink $file $HOME/${file##*/}
done

create_symlink $SCRIPT_DIR/.zshrcs $HOME/.zshrcs

# .config folders
for dir in $(find $SCRIPT_DIR/.config/ -mindepth 1 -maxdepth 1 -type d); do
    create_symlink $dir $XDG_CONFIG_HOME/${dir##*/}
done

# electron flags
electron_apps=(chromium discord electron microsoft-edge-stable)
for app in ${electron_apps[@]}; do
    create_symlink $SCRIPT_DIR/.config/electron-flags.conf $XDG_CONFIG_HOME/$app-flags.conf
done

create_symlink $SCRIPT_DIR/.config/code-flags.conf $XDG_CONFIG_HOME/code-flags.conf

# .local files
for dir in $(find $SCRIPT_DIR/.local/share -mindepth 1 -maxdepth 1 -type d); do
    create_symlink $dir $XDG_DATA_HOME/${dir##*/}
done
