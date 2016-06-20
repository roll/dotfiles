# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

#
# General
#

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# Vi mode
set -o vi

# Editor
export EDITOR=/usr/bin/vim.basic

# Glob
shopt -s globstar
# shopt -s dotglob

# No freeze
stty -ixon

#
# History
#

# Don't put duplicate lines in the history. See bash(1) for more options
HISTCONTROL=$HISTCONTROL${HISTCONTROL+:}ignoredups
HISTCONTROL=ignoreboth

# Set history file size
export HISTSIZE=100000

# Append to the history file, don't overwrite it
shopt -s histappend

#
# Chroot
#

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#
# Prompt
#

# Set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# Color prompt
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

# Set PS1 variable
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Unset variable
unset color_prompt force_color_prompt

#
# Completion
#

# Source system-wide completions
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

#
# Credentials
#

# Source credentials file
if [ -f ~/.credentials ]; then
    . ~/.credentials
fi

#
# Pathes
#

# Binaries path
if [ -d "$HOME/.binaries" ] ; then
    export PATH="$HOME/.binaries:$PATH"
fi

# Private binaries path
if [ -d "$HOME/.binaries/private" ] ; then
    export PATH="$HOME/.binaries/private:$PATH"
fi

# Chdir pathes
export CDPATH="$HOME/projects:$CDPATH"

#
# Bindings
#

# Set custom bindings
setxkbmap -option 'shift:both_capslock'
setxkbmap -option 'caps:ctrl_modifier'
# setxkbmap -option 'compose:ralt'
xcape -e 'Caps_Lock=Escape'

#
# Locales
#

# Set locales
export LANGUAGE=ru:en
export LANG=ru_RU.UTF-8
export LC_NUMERIC=ru_RU.UTF-8
export LC_TIME=ru_RU.UTF-8
export LC_MONETARY=ru_RU.UTF-8
export LC_PAPER=ru_RU.UTF-8
export LC_NAME=ru_RU.UTF-8
export LC_ADDRESS=ru_RU.UTF-8
export LC_TELEPHONE=ru_RU.UTF-8
export LC_MEASUREMENT=ru_RU.UTF-8
export LC_IDENTIFICATION=ru_RU.UTF-8
export PAPERSIZE=a4

#
# Aliases
#

# Color
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    #alias grep='grep --color=auto'
    #alias fgrep='fgrep --color=auto'
    #alias egrep='egrep --color=auto'
fi

# Chrome
alias chrome='google-chrome %U'

# Docker
alias compose='docker-compose'
alias cloud='docker-cloud'

# Git
alias git='hub'
alias status='git status'
alias dif='git diff'
alias log='git log --pretty=format:"%C(yellow)%h%Creset %s%Cgreen%d" --reverse -20'
alias rollback='git checkout .'
alias unstage='git reset'
alias clean='git clean -f -d'
alias commit='git add . && git commit -a'
alias amend='git add . && git commit --amend'
alias pull='git pull origin'
alias push='git push --follow-tags origin'
alias fetch='git fetch -p'
alias master='git checkout master'

# Idea
alias idea='$HOME/.idea/vendor/bin/idea.sh'

# Ipython
alias ipython='ipython3 --no-confirm-exit'

# Ltunify
alias ltunify='$HOME/.ltunify/vendor/ltunify'

# Misc
alias h='cd $HOME'
alias c='clear'
alias p='ipython'
alias j='nesh'
alias t='tmuxup'
alias v='source .venv'
alias e='set -a; source .env'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias snapshot='tar -cvzp $HOME | gpg -co machine-$(date +%F).tar.gz.gpg'

# Packer
alias packer='$HOME/.packer/vendor/packer'

# Sphinx
alias sphinx='sphinx-build -b html -d docs/_build/doctrees docs docs/_build/html'

# Terraform
alias terraform='$HOME/.terraform/vendor/terraform'

# Tmux
alias tmux='tmux -2'
alias tmuxup='tmuxp load -y2 . || tmux attach'

# Xclip
alias xclip='xclip -selection c'

#
# Misc
#

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Node
export PATH="$PATH:$HOME/.node/bin"

# Powerline
powerline-daemon -q
POWERLINE_BASH_SELECT=1
POWERLINE_BASH_CONTINUATION=1
. /usr/share/powerline/bindings/bash/powerline.sh

# Travis
source /home/roll/.travis/travis.sh

export NVM_DIR="/home/roll/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# The next line updates PATH for the Google Cloud SDK.
source '/home/roll/.google-cloud/google-cloud-sdk/path.bash.inc'

# The next line enables shell command completion for gcloud.
source '/home/roll/.google-cloud/google-cloud-sdk/completion.bash.inc'
