%export PATH="/usr/local/bin:$PATH"
source ~/.config/zsh/alias.sh
source ~/.config/zsh/git-completion.zsh
source ~/.config/zsh/functions.sh
# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(rtx activate zsh)"
