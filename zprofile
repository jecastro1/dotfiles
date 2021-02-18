### Env variables ###
export DOTFILES="$HOME/.dotfiles"
export ZSH_PLUGINS="$DOTFILES/zsh-plugins"
export ZSH_FUNCTIONS="$DOTFILES/zfunctions"

# Perl eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
export PATH="/Users/jaimecastro/.perl5/bin${PATH:+:${PATH}}"
export PERL5LIB="/Users/jaimecastro/.perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/Users/jaimecastro/.perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/Users/jaimecastro/.perl5\""
export PERL_MM_OPT="INSTALL_BASE=/Users/jaimecastro/.perl5"

# GPG
export GPG_TTY=`tty`

# Compilers for numpy (brew install numpy --only-dependencies), then use pipenv as needed
export LDFLAGS="-L/usr/local/opt/openblas/lib"
export CPPFLAGS="-I/usr/local/opt/openblas/include"
export PKG_CONFIG_PATH="/usr/local/opt/openblas/lib/pkgconfig"
# Workaround for numpy failing to install
# https://github.com/pypa/pipenv/issues/4564#issuecomment-756625303
export SYSTEM_VERSION_COMPAT=1

