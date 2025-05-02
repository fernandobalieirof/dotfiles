# How to use this repo?

Run

- `git clone --bare https://github.com/fernandoonrails/dotfiles.git $HOME/dotfiles`
- `alias bare="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME" >> $HOME/.bashrc`
- source your .bashrc file
- `bare checkout`
