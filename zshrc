source "$HOME/.zplugin/bin/zplugin.zsh"

# Colorize ls
export CLICOLOR=1

# Colorize man pages
zplugin light ael-code/zsh-colored-man-pages

# GPG
zplugin light axtl/gpg-agent.zsh

# Perl
eval "$(perl -I$HOME/.perl5/lib/perl5 -Mlocal::lib=$HOME/.perl5)"

# Python
eval "$(pyenv init -)"

# Pipsi
export PATH="/Users/jaimecastro/.local/bin:$PATH"

# Theme
zplugin ice pick"async.zsh" src"pure.zsh"
zplugin light sindresorhus/pure

# Completions
zplugin ice wait"0" blockf lucid
zplugin light zsh-users/zsh-completions

# Autosuggestions
zplugin ice wait"0" atload"_zsh_autosuggest_start" lucid
zplugin light zsh-users/zsh-autosuggestions

# Syntax highlighting
zplugin ice wait"0" atinit"zpcompinit; zpcdreplay" lucid
zplugin light zdharma/fast-syntax-highlighting

