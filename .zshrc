# --- 1. Native Zsh Options ---
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt SHARE_HISTORY APPEND_HISTORY HIST_IGNORE_DUPS HIST_REDUCE_BLANKS
setopt AUTO_CD PUSHD_IGNORE_DUPS COMBINING_CHARS
export LANG=en_US.UTF-8

# --- 2. Completion Preferences (Put these BEFORE Antidote) ---
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 

# --- 3. Antidote Plugin Loader ---
# (This handles compinit, so you don't have to!)
source ~/.antidote/antidote.zsh
antidote load ${ZDOTDIR:-$HOME}/.zsh_plugins.txt

# Wire the Up/Down arrows to the "Smart Search" plugin
bindkey '^[[A' history-substring-search-up
bindkey '^[OA' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^[OB' history-substring-search-down

# --- 4. Personal Aliases ---
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias sublime=subl

alias gps='git push origin'
alias gpl='git pull origin'
alias addCommit="git commit --amend --no-edit"
alias undoCommit="git reset --soft 'HEAD^'"

# --- 5. Prompt (Starship) ---
eval "$(starship init zsh)"
