%export PATH="/usr/local/bin:$PATH"
source ~/.config/zsh/alias.sh
source ~/.config/zsh/git-completion.bash
source ~/.config/zsh/functions.sh
# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(rtx activate zsh)"

# dockerの自動補完
fpath=(~/.config/zsh $fpath)
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
autoload -Uz compinit && compinit
