export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# export PATH="/usr/local/opt/openssl/bin:$PATH"
CONFIGURE_OPTS="--with-openssl=$(brew --prefix openssl)"
export HOMEBREW_CASK_OPTS=--appdir=/Applications
