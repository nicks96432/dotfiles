ptt() {
    ssh bbsu@ptt.cc
}

alias clear="printf '\033[2J\033[3J\033[1;1H'"

# key bindings
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

if command -v bat 2>&1 >/dev/null; then
    alias cat='bat --paging=never'
    alias -g -- --help='--help 2>&1 | bat --language=help --style=plain'
fi

if command -v z 2>&1 >/dev/null; then
    alias cd='z'
fi

alias yay=paru
