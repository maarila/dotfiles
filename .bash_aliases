# list directory contents in more detail
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -halF --color --group-directories-first'
alias l='ls -halF --color --group-directories-first'
alias o='ls -latr --color --group-directories-first'

# display grep output in color
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# move between directories more conveniently
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'