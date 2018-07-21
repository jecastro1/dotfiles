### Env variables ###
export DOTFILES="$HOME/.dotfiles"
export ZSH_PLUGINS="$DOTFILES/zsh-plugins"
export ZSH_FUNCTIONS="$DOTFILES/zfunctions"

# Perl eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
export PERL_MB_OPT="--install_base \"/Users/jaimecastro/.perl5\"";
export PERL_MM_OPT="INSTALL_BASE=/Users/jaimecastro/.perl5";

# Python
eval "$(pyenv init - --no-rehash zsh)"

# Pipsi
export PATH="$HOME/.local/bin:$PATH"


