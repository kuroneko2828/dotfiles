export SRILM=/Users/ishikawa/srilm/srilm-1.7.3
export MACHINE_TYPE=macosx
export PATH=$PATH:$SRILM/bin:$SRILM/bin/macosx
export MANPATH=$MANPATH:$SRILM/manexport PGDATA=/usr/local/var/postgres
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH=$HOME/.nodebrew/current/bin:$PATH
export PATH=$HOME/command:$PATH
export PATH="/usr/local/bin:$PATH"
export DENO_INSTALL="/Users/ishikawa/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
source ~/.config/zsh/alias.sh
source ~/.config/zsh/git-completion.zsh
# starship
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
