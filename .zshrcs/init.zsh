# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
setopt extendedglob nomatch
unsetopt autocd beep

# End of lines configured by zsh-newuser-install

if command -v sccache >/dev/null 2>&1; then
    export RUSTC_WRAPPER=sccache
fi

ZIM_CONFIG_FILE=$ZSH_CONFIG_DIR/.zimrc
ZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/ohmyzsh"

if [ "$TERM" = "linux" ]; then
    printf "\033]P0282c34" # Black
    printf "\033]P8282c34" # Bright Black

    printf "\033]P1ea5b76" # Red
    printf "\033]P9ea5b76" # Bright Red

    printf "\033]P298c379" # Green
    printf "\033]PA98c379" # Bright Green

    printf "\033]P3fed552" # Yellow
    printf "\033]PBfed552" # Bright Yellow

    printf "\033]P46495cf" # Blue
    printf "\033]PC6495cf" # Bright Blue

    printf "\033]P57e6ca8" # Purple
    printf "\033]PD7e6ca8" # Bright Purple

    printf "\033]P65bb6c2" # Cyan
    printf "\033]PE5bb6c2" # Bright Cyan

    printf "\033]P7dcdfe4" # White
    printf "\033]PFdcdfe4" # Bright White

    if (( ${+commands[fbterm]} )); then
        if [[ "$TTY" = /dev/tty* ]] ; then
            fbterm-bi ~/圖片/background-fbterm.png && exit
        fi
    fi
fi
