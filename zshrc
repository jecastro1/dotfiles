export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Completions
zplug zsh-users/zsh-completions

# Syntax highlighting
zplug zsh-users/zsh-syntax-highlighting

# History substring search
zplug "zsh-users/zsh-history-substring-search"

# Colorize man pages
zplug ael-code/zsh-colored-man-pages

# Colorize ls
export CLICOLOR=1

# Colorize diff
alias diff="colordiff"

# Brew
zplug vasyharan/zsh-brew-services

# GPG
zplug axtl/gpg-agent.zsh

# Perl
eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"

# Python
eval "$(pyenv init -)"
# Pipsi
export PATH="/Users/jaimecastro/.local/bin:$PATH"

# Theme
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme

# Load everything
zplug load

