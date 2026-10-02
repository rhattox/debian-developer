# ~/.bashrc: executed by bash(1) for non-login shells.

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# History settings
HISTCONTROL=ignoreboth
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s histappend

# Check window size after each command
shopt -s checkwinsize

# Colored prompt setup
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Color support for ls and grep aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# Useful default aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
EOF

cat << 'EOF' > ~/.profile
# ~/.profile: executed by the command interpreter for login shells.

if [ -n "$BASH_VERSION" ]; then
    if [ -f "$0.bashrc" ]; then
        . "$0.bashrc"
    fi
fi

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
EOF


# Safety prompts before overwriting or deleting
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Prevent accidentally writing to an existing file with >
set -o noclobber


# Navigation shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# File & Directory inspection
alias df='df -h'              # Human-readable disk usage
alias du='du -h --max-depth=1' # Disk space by directory
alias mkdir='mkdir -pv'       # Create nested dirs and report progress
alias path='echo -e ${PATH//:/\\n}' # Print PATH cleanly line-by-line

# Parse git branch
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# Enhanced Prompt with Git Branch (Yellow)
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[01;33m\]$(parse_git_branch)\[\033[00m\]\$ '


# Enable bash completion (if available)
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

# Automatically fix minor spelling errors in cd commands
shopt -s cdspell

# Up/Down arrows search history based on what you've already typed
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'