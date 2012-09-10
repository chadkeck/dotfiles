# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="keckstar"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/games:$PATH

bindkey -v
setopt autocd
unsetopt correct_all

# git aliases
alias g=git
alias ga='git add'
alias gap='git add --patch'
alias gb='git branch -v'
alias gbm='git branch --merged'
alias gc='git cherry -v'
alias gca='git commit --amend -C HEAD'
alias gco='git checkout'
alias gcp='git cherry-pick'
alias gd='git diff --color'
alias gds='git diff --color --staged'
alias gfo='git fetch origin'
alias ggd='git difftool --no-prompt -t opendiff'
alias gl='git log -8'
alias gll='git l80'
alias glll='git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset" --abbrev-commit --'
alias glt='git log --graph --oneline --all --decorate'
alias gtt='git log --oneline --decorate --graph'
alias gpom='git push origin master'
alias gr='git remote -v'
alias gra='git rebase --abort'
alias grc='git rebase --continue'
alias grom='git rebase origin/master'
alias gs='git status'
alias gsf='git show --pretty="format:" --name-only'
alias gt='git tag -l -n1'
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
alias ls='ls --color=auto'
alias rm='rm -i'
alias t='todo.sh'
alias vims='vim -S'
alias ta='tmux attach'

# exports
export EDITOR=vim
export GREP_COLOR='0;35'
export NODE_PATH=/usr/local/lib/jsctags/:$NODE_PATH
export PATH=/usr/local/git/bin:$PATH
export PYTHONSTARTUP=$HOME/.pythonrc.py
export TODOTXT_DEFAULT_ACTION=ls
export LD_LIBRARY_PATH=$HOME/local/lib:$LD_LIBRARY_PATH
