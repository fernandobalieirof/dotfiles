for config_file in "$HOME/.config/zsh"/*; do
  if [[ -f "$config_file" ]]; then
    source "$config_file"
  fi
done

