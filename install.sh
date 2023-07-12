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

# Check if ohmyzsh is installed and install it if its not
if [ ! -d "$HOME/.oh-my-zsh/oh-my-zsh.sh" ]; then
  echo "😠 oh-my-zsh is not installed"
  echo "👀 Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# Get the shell and change it to zsh if it isn't already
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "😠 Changing shell from \`$SHELL\` to $(which zsh)"
  sudo chsh -s "$(which zsh)"
fi

echo "🎉 We're officially customised!"