export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH=$PATH:$HOME/.local/bin/
eval "$(pyenv init -)"
eval "$(rbenv init -)"

if [ -f ~/.zshrc ] ; then
. ~/.zshrc
fi
