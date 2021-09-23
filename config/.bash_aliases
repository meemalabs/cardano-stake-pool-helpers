# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so: (currently unused, but left in for convenience)
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# custom aliases
alias gLiveView="cd $NODE_HOME; ./gLiveView.sh"

alias startNode="cd $NODE_HOME; ./start_node.sh"
alias stopNode="sudo systemctl stop cardano-node"
alias restartNode="sudo systemctl reload-or-restart cardano-node"

alias nodeStatus="sudo systemctl status cardano-node"
alias nodeLogs="journalctl --unit=cardano-node --follow"
alias nodeLogsToday="journalctl --unit=cardano-node --since=today"
alias nodeLogsYesterday="journalctl --unit=cardano-node --since=yesterday"
alias nodeHome="cd $NODE_HOME;"

alias slotNo="cardano-cli query tip --$NODE_CONFIG | jq -r '.slot'"

alias ~="cd $HOME"
alias home="cd $HOME"
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
