# the dir where all the rbenv stuff lives
set RBENV_CONTAINER "$HOME/.rbenv"

# main rbenv root
set -x RBENV_ROOT "$RBENV_CONTAINER/root"

# setup ruby-build hook path
set RUBY_BUILD_ROOT "$RBENV_CONTAINER/ruby-build"

# put bins on the path
set -x PATH $RBENV_ROOT/bin $RUBY_BUILD_ROOT/bin $PATH

# init
rbenv init - | source
