# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# THEME
ZSH_THEME="ar-round"

# prompt
PROMPT='%{$fg_bold[cyan]%}%c%(?:%{$fg_bold[green]%}/:%{$fg_bold[red]%}/)%{$reset_color%} '

# plugins
plugins=(
    git
    zsh-autosuggestions
    zsh-completions 
    zsh-syntax-highlighting 
    bgnotify
)

source $ZSH/oh-my-zsh.sh

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# aliases
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
# alias fzf='fzf --preview "bat --style=numbers --color=always --line-range :500 {}"'
# alias l='ls -l'
# alias ls='lsd'
# alias la='ls -a'
# alias lla='ls -la'
# alias lt='ls --tree'
# alias cat='bat'
alias q='exit'
alias rzsh='source ~/.zshrc'


alias c='clear'

# root privileges
# alias doas="doas --"

# navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# vim and emacs
#alias vim='nvim'
#alias v='nvim'

# cat
alias cat='bat'

# Changing "ls" to "exa"
alias l='exa --color=always --group-directories-first --icons' # my preferred listing
alias ls='exa -al --color=always --group-directories-first --icons' # my preferred listing
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l.='exa -a | egrep "^\."'

# pacman and paru
alias pacsyu='sudo pacman -Syyu'                 # update only standard pkgs
alias parusua='paru -Sua --noconfirm'            # update only AUR pkgs (paru)
alias parusyu='paru -Syu --noconfirm'            # update standard pkgs and AUR pkgs (paru)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# --------------------------------------------------------------

export PATH="$PATH:$HOME/.spicetify"
neofetch