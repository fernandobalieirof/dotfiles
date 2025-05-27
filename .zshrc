for config_file in "$HOME/.config/zsh"/*; do
  if [[ -f "$config_file" ]]; then
    source "$config_file"
  fi
done

# Set up fzf key bindings and fuzzy completion
# source <(fzf --zsh)


export PATH="/home/fernando/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/home/fernando/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
