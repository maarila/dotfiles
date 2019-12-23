# Set locale to en_US
export LANG=en_US.UTF-8

# Set colors for ls
export CLICOLOR=1

# closing the shell with ctrl-D requires two presses
export IGNOREEOF=1

# Create a two-line prompt
export PS1="%F{green}%n@%m:%F{178}%~%f
$ "

# add support for a larger history length
export HISTSIZE=1000000
export HISTFILESIZE=1000000

# avoid duplicates in history
export HISTCONTROL=ignoredups:erasedups:ignorespace

# append to history on exit (bash)
# shopt -s histappend
setopt APPEND_HISTORY

# if [ -f ~/.zprofile ]; then
    # source ~/.zprofile
# fi


#*************************************#
#  The 'feel free to delete' section  #
#*************************************#

# Show a greeting when opening terminal.
# Please note: fortune/cowsay/lolcat all need to be installed with 'brew install'
if [ -x /usr/local/bin/fortune -a -x /usr/local/bin/cowsay ]; then
  fortune -s | cowsay | lolcat
fi

# View random cowsay by replacing the above cowsay with the following:
# cowsay -f `ls -1 /usr/local/Cellar/cowsay/3.04/share/cows/*.cow | sort -R | head -1` -n

