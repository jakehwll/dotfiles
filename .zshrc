#########################################
# Jake Howell's ZSH configuration 
##########################################

# Path to oh-my-zsh configuration.
ZSH=~/.oh-my-zshe

# Name of the theme to load.
ZSH_THEME="agnoster"

# Plugins shorthand
plugins=(git)

# Auto suggestions and Syntax highlighting
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting.zsh/zsh-syntax-highlighting.zsh

# Check if `direnv` is in use and add it's hook.
if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi