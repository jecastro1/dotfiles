source "$HOME/.zplugin/bin/zplugin.zsh"

# GPG
zplugin ice wait"0" lucid
zplugin light axtl/gpg-agent.zsh

# Perl
# eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"
export PERL_MB_OPT="--install_base \"/Users/jaimecastro/.perl5\"";
export PERL_MM_OPT="INSTALL_BASE=/Users/jaimecastro/.perl5";

# Python
eval "$(pyenv init -)"

# Pipsi
export PATH="/Users/jaimecastro/.local/bin:$PATH"

# Colorize ls
export CLICOLOR=1

# Colorize man pages
zplugin ice wait"0" lucid
zplugin light ael-code/zsh-colored-man-pages

# History base config
zplugin snippet 'https://github.com/sorin-ionescu/prezto/blob/master/modules/history/init.zsh'

# History search multiword
zplugin ice wait"0" lucid
zplugin light zdharma/history-search-multi-word

# Theme
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

# Completions options
## Add menu style for completions
zstyle ':completion:*' menu select

# Some completions
zplugin ice wait"0" blockf lucid
zplugin light zsh-users/zsh-completions

# Syntax highlighting (should be as late as possible)
zplugin ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

# History substring search (should be after syntax highlighting)
zplugin ice wait"!1" lucid
zplugin light zsh-users/zsh-history-substring-search

