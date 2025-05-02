################################### OH MY ZSH CONFIG
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh
###################################

source $HOME/alias.sh
source $HOME/pathrc.sh

alias bare="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME"
