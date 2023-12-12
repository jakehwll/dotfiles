# ===================================== #
# == Jake Howell's ZSH configuration == #
# ===================================== #

# Path to oh-my-zsh configuration.
export ZSH=~/.oh-my-zsh

# Name of the theme to load.
ZSH_THEME="agnoster"

# Name of the plugin(s) directory.
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"

# Command completing indication.
COMPLETION_WAITING_DOTS="true"

# Plugins shorthand
plugins=(git)

# Auto suggestions and Syntax highlighting
source ${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh
source ${ZSH_PLUGINS_DIR}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Hook our ZSH install.
source $ZSH/oh-my-zsh.sh

# If vscode is installed, set it to the default editor.
if command -v code &> /dev/null; then
  export EDITOR='code -w'
fi

# If `direnv` is installed, add it's hook.
if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi

# ===================================== #
# Jake Howell's Magic
# ===================================== #

export EDITOR='code --wait'

alias g="git"
alias b="bun"
alias y="yarn"
alias p="pnpm"
alias py="python3"
