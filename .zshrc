ZSH_CONFIG_DIR=$HOME/.zshrcs
scripts=($ZSH_CONFIG_DIR/*.zsh)

init_zsh_path=$ZSH_CONFIG_DIR/init.zsh
postinit_zsh_path=$ZSH_CONFIG_DIR/postinit.zsh

scripts=(${scripts[@]/$init_zsh_path})
scripts=(${scripts[@]/$postinit_zsh_path})

source $init_zsh_path

for script in $scripts; do
    source $script
done

source $postinit_zsh_path
