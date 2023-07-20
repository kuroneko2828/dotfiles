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
export PS1="\[\033[36m\]\u: \[\033[32m\]\W\$\[\033[m\] "
export GOENV_ROOT="$HOME/.goenv"
export PATH="$GOENV_ROOT/bin:$PATH"
eval "$(goenv init -)"
export PATH="$GOROOT/bin:$PATH"
export PATH="$PATH:$GOPATH/bin"
source ~/.config/bash/alias.sh
source ~/.config/bash/git-completion.bash
# starship
eval "$(starship init bash)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
