#!/usr/bin/env sh

#zsh einrichten

ln -rs "$HOME/.config/zsh/.zshenv" "$HOME/.zshenv"

mkdir -p "$HOME/.local/share"
git clone --depth 1 "https://github.com/zsh-users/zsh-syntax-highlighting.git" "$HOME/.local/share/zsh-syntax-highlighting"

# braucht paswort

chsh -s/bin/zsh
