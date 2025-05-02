# How to use this repo?

Run

- `git clone --bare https://github.com/fernandoonrails/dotfiles.git $HOME/dotfiles`
- `alias bare="/usr/bin/git --git-dir=$HOME/dotfiles --work-tree=$HOME" >> $HOME/.bashrc`
- source your .bashrc file
- `bare config --local status.showUntrackedFiles no` so that it doesn't show all the untracked files
- `bare checkout`
