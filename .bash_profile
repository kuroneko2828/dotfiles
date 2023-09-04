export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:$HOME/.local/bin/
eval "$(pyenv init -)"
eval "$(rbenv init -)"

if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ishikawa/google-cloud-sdk/path.bash.inc' ]; then . '/Users/ishikawa/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ishikawa/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/ishikawa/google-cloud-sdk/completion.bash.inc'; fi
