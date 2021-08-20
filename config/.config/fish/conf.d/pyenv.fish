# the dir where all the pyenv stuff lives
set PYENV_CONTAINER "$HOME/.pyenv"

# main pyenv root
set -x PYENV_ROOT "$PYENV_CONTAINER/root"

# setup pyenv-virtualenv hook path
set PYENV_VIRTUALENV_ROOT "$PYENV_CONTAINER/pyenv-virtualenv"
set -x PYENV_HOOK_PATH "$PYENV_VIRTUALENV_ROOT/etc/pyenv.d"

# put bins on the path
set -x PATH $PYENV_ROOT/bin $PYENV_VIRTUALENV_ROOT/bin $PATH

# init
pyenv init --path | source
pyenv virtualenv-init - | source
