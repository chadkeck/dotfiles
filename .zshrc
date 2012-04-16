# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="simple"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git rails3 osx ruby rvm brew bundler gem node npm vi-mode)

source $ZSH/oh-my-zsh.sh

# zsh customization
bindkey -v
setopt autocd
unsetopt SHARE_HISTORY
unsetopt correct_all

function command_not_found_handler {
    git show $*
}

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# git aliases
alias g=git
alias ga='git add'
alias gap='git add --patch'
alias gb='git branch -v'
alias gc='git cherry -v'
alias gca='git commit --amend -C HEAD'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff --color'
alias gds='git diff --color --staged'
alias ggd='git difftool --no-prompt -t opendiff'
alias gl='git log -8'
alias gll='git l80'
alias glt='git log --graph --oneline --all --decorate'
alias gr='git remote -v'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias gs='git status'
alias gsf='git show --pretty="format:" --name-only'
alias stash='git commit -a -m "WIP: stash"'
alias unstash='git reset HEAD~1'

# shell aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias fh='find . -name'
alias grep='grep --color=always -n'
alias l='ls -hal'
alias less='less -R'
alias ls='ls -G'
alias rm='rm -i'
alias t='todo.sh'
alias vims='vim -S'

# company aliases
alias m5='cd ~/code/m5portal'

# exports
export EDITOR=vim
export GREP_COLOR='0;35'
export LSCOLORS=exfxbEaEBxxEhEhBaDaCaD
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export PATH=/usr/local/bin:/usr/local/git/bin:/Library/PostgreSQL/8.4/bin:$PATH
export PYTHONSTARTUP=$HOME/.pythonrc.py
export TODOTXT_DEFAULT_ACTION=ls
