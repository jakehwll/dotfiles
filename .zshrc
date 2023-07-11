#########################################
# Jake Howell's ZSH configuration 
##########################################

# Path to oh-my-zsh configuration.
ZSH=~/.oh-my-zshe

# Name of the theme to load.
ZSH_THEME="agnoster"

# Name of the plugin(s) directory.
ZSH_PLUGINS_DIR="$HOME/.oh-my-zsh/custom/plugins"

# Plugins shorthand
plugins=(git)

# Auto suggestions and Syntax highlighting
source "${ZSH_PLUGINS_DIR}/zsh-autosuggestions/zsh-autosuggestions.zsh"
source "${ZSH_PLUGINS_DIR}/zsh-syntax-highlighting.zsh/zsh-syntax-highlighting.zsh"

# Check if `direnv` is in use and add it's hook.
if command -v direnv &> /dev/null; then
  eval "$(direnv hook zsh)"
fi