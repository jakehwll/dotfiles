#!/bin/zsh

# Check if ohmyzsh is installed and install it if its not
if [ ! -d "$HOME/.oh-my-zsh/oh-my-zsh.sh" ]; then
  echo "👀 Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

mkdir -p "$ZSH_PLUGINS_DIR" && cd "$ZSH_PLUGINS_DIR"

if [ ! -d "$ZSH_PLUGINS_DIR/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions
fi

if [ ! -d "$ZSH_PLUGINS_DIR/zsh-syntax-highlighting" ]; then
  git clone https://github.com/zsh-users/zsh-syntax-highlighting
fi

mv $HOME/.zshrc $HOME/.zshrc.pre-dotfiles
cp ./.zshrc $HOME/.zshrc

# Get the shell and change it to zsh if it isn't already
if [ "$SHELL" != "$(which zsh)" ]; then
  echo "😠 Changing shell from \`$SHELL\` to $(which zsh)"
  sudo chsh -s "$(which zsh)"
fi

# Git Configuration
git config --global user.name "Jake Howell"
git config --global user.email jake@hwll.me

echo "🎉 We're officially customised!"