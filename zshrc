fpath=($ZSH_FUNCTIONS $fpath)

## Customizations ###

# Colorize ls
export CLICOLOR=1

# Colorize man pages
source "$ZSH_PLUGINS/zsh-colored-man-pages/colored-man-pages.plugin.zsh"

# History base config
source "$ZSH_PLUGINS/prezto-history/init.zsh"

# Completions
zstyle ':completion:*' menu select
source "$ZSH_PLUGINS/zsh-completions/zsh-completions.plugin.zsh"
autoload -U compinit
typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

# Theme
autoload -U promptinit; promptinit
prompt pure

# Syntax highlighting
source "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh"

# History substring search
source "$ZSH_PLUGINS/zsh-history-substring-search/zsh-history-substring-search.zsh"
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
