# .bashrc
# Justin Lim <justin@isthecoolest.ninja> github.com/jlim0930
#
if [ -f ~/.bashrc.local ]; then
  source ~/.bashrc.local
fi

# load local bashrc if it exists
if [ -f ~/.bashrc.local ]; then
  . ~/.bashrc.local
fi

# load local aliases if it exists
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# local bash_completion if it exists
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -x /usr/bin/dircolors ]; then
  # we have colors
  if [ -f ~/.dir_colors ]; then
    eval $(dircolors -b ~/.dir_colors)
  elif [ -f /etc/DIR_COLORS ]; then
    eval $(dircolors -b /etc/DIR_COLORS)
  fi
  alias ls='ls --color=auto'
  alias dir='dir --color=auto'
  alias grep='grep --color=auto'
  alias fgrep='fgrep --color=auto'
  alias egrep='egrep --color=auto'
  alias dmesg='dmesg --color'
fi

if [ -x /usr/bin/vim ]; then
  alias vi='/usr/bin/vim'
fi


# FUNCTIONS
function backup() {
  cp "$1" "$1_`date +Y-%m-%d_%H-%M-%S`"
}

function nonzero_return() {
  RETVAL=$?
  [ $RETVAL -ne 0 ] && echo "$RETVAL"
}

# OPTIONS
shopt -s checkwinsize
shopt -s histappend
HISTCONTROL=ignorespace:ignoredups
HISTSIZE=10000
HISTFILESIZE=20000

# ALIASES
alias ..='cd ..'


# ENVS
PATH=$PATH:$HOME/bin
export PATH
MANPATH=$MANPATH:$HOME/share/man
export MANPATH
EDITOR="vim"
export EDITOR


# PROMPTS
export PS1='[\u@\h \W]\$ '
