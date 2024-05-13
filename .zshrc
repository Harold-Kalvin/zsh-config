# load version control information
autoload -Uz vcs_info
precmd() { vcs_info }

# format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats '(%b) '

# set up the prompt (with git branch name)
setopt PROMPT_SUBST
prompt='%F{155}%n@local%f:%F{159}%1~/%f %F{141}${vcs_info_msg_0_}%f%F{209}%#%f '

# history (no duplicates on up-arrow)
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt incappendhistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# completion
fpath+=~/.zsh/docker-completions
fpath+=~/.zsh/zsh-completions/src
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

# keybindings
bindkey -e
bindkey '^H' backward-kill-word
bindkey "^[[1;5D" backward-word
bindkey "^[[1;5C" forward-word
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# plugins
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
