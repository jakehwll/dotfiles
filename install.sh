#!/bin/zsh

CURRENT_DIR=`pwd`
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"

mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions
fi
if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting
fi
cd "$CURRENT_DIR"

# Backup our zsh config
echo "👀 Backing up zsh config"
mv ~/.zshrc ~/.zshrc.old
cp ./.zshrc ~/.zshrc

# Check if zsh is installed and change it to zsh if its not already
if [ ! -x "$(command -v zsh)" ]; then
  echo "😠 `zsh` is not installed"
  exit 1
fi

# Get the shell and change it to zsh if it isn't already
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "😠 Changing shell from \`$SHELL\` to $(which zsh)"
  chsh -s "$(which zsh)"
fi

echo "🎉 We're officially customised!"