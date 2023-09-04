ptt() {
    ssh bbsu@ptt.cc
}

alias clear="printf '\033[2J\033[3J\033[1;1H'"

# key bindings
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
