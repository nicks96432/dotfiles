# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=1000000
setopt extendedglob nomatch
unsetopt autocd beep
# End of lines configured by zsh-newuser-install

export PATH=$HOME/bin:$HOME/.local/bin:$HOME/go/bin:$HOME/node/bin:$HOME/.local/share/gem/ruby/3.0.0/bin:$HOME/.cargo/bin:/opt/osxcross/bin:/opt/cuda/bin:/opt/cuda/nsight_systems/bin:/opt/cuda/nsight_compute:$PATH
export npm_config_prefix=$HOME/.local
export OptiX_INSTALL_DIR=/opt/optix

if command -v sccache >/dev/null 2>&1; then
    export RUSTC_WRAPPER=sccache
fi

ZIM_CONFIG_FILE=$ZSH_CONFIG_DIR/.zimrc
