# OH-MY-ZSH
export ZSH="$HOME/.oh-my-zsh"

# THEME
# CUSTOM THEMES AVAILABLE

# Arrow-Rounded by owl4ce
# ZSH_THEME="ar-round"

# Lambda-Rounded by owl4ce
# ZSH_THEME="la-round"

# Jovial by zthxxx
 ZSH_THEME="jovial"

# Oxide by dikiaap
# ZSH_THEME="oxide"

# thm by sudo-HackerMan
# ZSH_THEME="thm"

# prompt
PROMPT='%{$fg_bold[cyan]%}%c%(?:%{$fg_bold[green]%}/:%{$fg_bold[red]%}/)%{$reset_color%} '



# plugins
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/autojump/autojump.zsh
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
plugins=(
  git
  urltools
  bgnotify
  sudo
  jovial
  archive
)

source $ZSH/oh-my-zsh.sh

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

# aliases
# alias fzf='fzf --preview "bat --style=numbers --color=always --line-range :500 {}"''
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
alias vim='nvim'
alias v='nvim'

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
alias yaysua='paru -Sua --noconfirm'             # update only AUR pkgs (yay)
alias yaysyu='paru -Syu --noconfirm'             # update standard pkgs and AUR pkgs (yay)
alias unlock='sudo rm /var/lib/pacman/db.lck'    # remove pacman lock
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'  # remove orphaned packages

# confirm before overwriting something
alias cp="cp -i"
alias mv='mv -i'
alias rm='rm -i'

# --------------------------------------------------------------

export PATH="$PATH:$HOME/.spicetify"
#neofetch

