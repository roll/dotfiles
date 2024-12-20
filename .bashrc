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
export VISUAL=nvim
export EDITOR="$VISUAL"

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
export HISTSIZE=1000000

# Append to the history file, don't overwrite it
shopt -s histappend

# Write history immediately
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

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
export PATH="$HOME/binaries:$PATH"

# Chdir pathes
export CDPATH="$HOME/projects:$CDPATH"
# export CDPATH="$HOME/projects/mycarro:$CDPATH"
# export CDPATH="$HOME/projects/okfn:$CDPATH"
# export CDPATH="$HOME/projects/frictionlessdata:$CDPATH"
# export CDPATH="$HOME/projects/others:$CDPATH"

#
# Bindings
#

# Set custom bindings
# xmodmap ~/.Xmodmap
# setxkbmap -option 'shift:both_capslock'
# setxkbmap -option 'compose:ralt'
xcape -e 'Caps_Lock=Escape'
setxkbmap -option 'caps:ctrl_modifier'
xmodmap -e "keycode  108 = Return NoSymbol Return"
xmodmap -e "keycode  37 = Caps_Lock NoSymbol Caps_Lock NoSymbol Caps_Lock Caps_Lock"
xmodmap -e "keycode  67 = BackSpace BackSpace BackSpace BackSpace BackSpace BackSpace"
xmodmap -e "keycode  68 = BackSpace BackSpace BackSpace BackSpace BackSpace BackSpace"
xmodmap -e "keycode  69 = BackSpace BackSpace BackSpace BackSpace BackSpace BackSpace"
xmodmap -e "keycode  70 = Delete Delete Delete Delete Delete Delete"
# xmodmap -e "keycode  71 = Return Return Return Return Return Return" (F5)
xmodmap -e "keycode  72 = Return Return Return Return Return Return"
xmodmap -e "keycode  73 = Return Return Return Return Return Return"
xmodmap -e "keycode  74 = Return Return Return Return Return Return"

#
# Locales
#

# Set locales
# export LANGUAGE=en:ru
# export LANG=en_US.UTF-8
# export LC_NUMERIC=en_GB.UTF-8
# export LC_TIME=en_GB.UTF-8
# export LC_MONETARY=en_GB.UTF-8
# export LC_PAPER=en_GB.UTF-8
# export LC_NAME=en_GB.UTF-8
# export LC_ADDRESS=en_GB.UTF-8
# export LC_TELEPHONE=en_GB.UTF-8
# export LC_MEASUREMENT=en_GB.UTF-8
# export LC_IDENTIFICATION=en_GB.UTF-8
# export PAPERSIZE=a4

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

# Shortcuts
alias b='cp ~/.tmuxp.yml . && sed -i "s/home/${PWD##*/}/" .tmuxp.yml'
alias c='clear'
alias e='set -a; source .env'
alias f='fzf'
alias h='cd $HOME'
alias js='pnpm exec vite-node'
alias jt='pnpm exec vitest run'
alias m='main && pull && fetch'
alias n='node'
alias o='nvim'
alias p='ipython'
alias pf='pnpm -F'
alias pn='pnpm'
alias px='pnpm dlx'
alias t='tmuxup'
alias v='source .venv'

# Commands
alias amend='git add . && git commit --amend'
alias chrome='google-chrome %U'
alias clean='git clean -f -d'
alias cloud='docker-cloud'
alias commit='git add . && git commit -a'
alias compose='docker-compose'
alias dif='git diff'
alias fetch='git fetch -p'
alias git='hub'
alias idea='$HOME/.idea/vendor/bin/idea.sh'
alias ipython='ipython --no-confirm-exit'
alias log='git log --pretty=format:"%C(yellow)%h%Creset %s%Cgreen%d" --reverse -20'
alias ltunify='$HOME/.ltunify/vendor/ltunify'
alias main='git checkout main || git checkout master'
alias myip='dig +short myip.opendns.com @resolver1.opendns.com'
alias pull='git pull origin'
alias push='git push --follow-tags origin'
alias rollback='git checkout .'
alias status='git status'
alias tmux='tmux -2'
alias tmuxup='tmuxp load -y2 . || tmux attach'
alias unstage='git reset'
alias xclip='xclip -selection c'

#
# Misc
#

# Trackpoint
xinput --set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Profile Enabled' 0, 1
xinput --set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' 1
# xinput --set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Profile Enabled' 0, 1
# xinput --set-prop 'TPPS/2 IBM TrackPoint' 'libinput Accel Speed' 1
# xinput --set-prop 'pointer:ThinkPad Compact Bluetooth Keyboard with TrackPoint' 'libinput Accel Profile Enabled' 0, 1
# xinput --set-prop 'pointer:ThinkPad Compact Bluetooth Keyboard with TrackPoint' 'libinput Accel Speed' 1

# Heroku
export PATH="/usr/local/heroku/bin:$PATH"

# Python
export PATH="$PATH:$HOME/.local/bin"

# Node
export PATH="$PATH:$HOME/.node/bin"

# Powerline
powerline-daemon -q
POWERLINE_BASH_SELECT=1
POWERLINE_BASH_CONTINUATION=1
. /usr/share/powerline/bindings/bash/powerline.sh

# Travis
# source /home/roll/.travis/travis.sh

# The next line enables kubectl/helm bash completion
source <(kubectl completion bash)
source <(helm completion bash)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# PHPBrew
[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

# Gvm
[[ -s "/home/roll/.gvm/scripts/gvm" ]] && source "/home/roll/.gvm/scripts/gvm"

# Jabba
[ -s "/home/roll/.jabba/jabba.sh" ] && source "/home/roll/.jabba/jabba.sh"

# Fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export FZF_DEFAULT_COMMAND='ag -g ""'

# Frictionless
source /home/roll/.bash_completions/frictionless.sh

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
nvm use system --silent

# PNPM
###-begin-pnpm-completion-###
if type complete &>/dev/null; then
  _pnpm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           SHELL=bash \
                           pnpm completion-server -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"

    if [ "$COMPREPLY" = "__tabtab_complete_files__" ]; then
      COMPREPLY=($(compgen -f -- "$cword"))
    fi

    if type __ltrim_colon_completions &>/dev/null; then
      __ltrim_colon_completions "${words[cword]}"
    fi
  }
  complete -o default -F _pnpm_completion pnpm
  complete -o default -F _pnpm_completion pn
fi
###-end-pnpm-completion-###
