autoload -Uz add-zsh-hook
export PATH="/usr/local/bin:$PATH"
source ~/.config/zsh/alias.sh
source ~/.config/zsh/functions.sh
source ~/.config/zsh/write_log.sh
source ~/.config/zsh/zhooks/zhooks.plugin.zsh
source ~/.config/zsh/gcloud_project.sh
source ~/.config/zsh/cat_background.sh

# internal-use
if [ -f ~/.config/zsh/wed_functions.sh ]; then
    source ~/.config/zsh/wed_functions.sh
fi

# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml

# dockerの自動補完
fpath=(~/.config/zsh $fpath)
zstyle ':completion:*:*:docker:*' option-stacking yes
zstyle ':completion:*:*:docker-*:*' option-stacking yes
autoload -Uz compinit && compinit
export PATH="$HOME/.deno/bin:$PATH"
# export PATH="$HOME/.asdf/shims:$PATH"
export PATH="$HOME/tools:$PATH"
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# ghコマンドの補完
eval "$(gh completion -s zsh)"
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export PATH="${HOME}/.asdf/shims/npm:$PATH"
export PATH="$(npm prefix -g)/bin:$PATH"
