# History

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

up="${terminfo[kcuu1]}"
down="${terminfo[kcud1]}"

for km in emacs viins vicmd; do
  bindkey -M "$km" "$up"   up-line-or-beginning-search
  bindkey -M "$km" "$down" down-line-or-beginning-search
done
