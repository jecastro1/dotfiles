# Evaluate moving them another place
export DOTFILES="$HOME/.dotfiles"
export ZSH_PLUGINS="$DOTFILES/zsh-plugins"
export ZSH_FUNCTIONS="$DOTFILES/zfunctions"

fpath=($ZSH_FUNCTIONS $fpath)

# Perl
# eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
export PERL_MB_OPT="--install_base \"/Users/jaimecastro/.perl5\"";
export PERL_MM_OPT="INSTALL_BASE=/Users/jaimecastro/.perl5";

# Pipsi
export PATH="$HOME/.local/bin:$PATH"

# From here, I'm certain that these have to be here

# Colorize ls
export CLICOLOR=1

# Colorize man pages
source "$ZSH_PLUGINS/zsh-colored-man-pages/colored-man-pages.plugin.zsh"

# History base config
source "$ZSH_PLUGINS/prezto-history/init.zsh"

# Completions
source "$ZSH_PLUGINS/zsh-completions/zsh-completions.plugin.zsh"
autoload -U compinit; compinit

# Theme
autoload -U promptinit; promptinit
prompt pure

# Syntax highlighting
source "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"

# History substring search
source "$ZSH_PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh"
