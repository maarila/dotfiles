# Create a two-line prompt
export PS1="\[\033[32m\]\u\[\033[32m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\n\[\033[m\]\$ "

# Set aliases
# Please note: 'gls' command requires coreutils to be installed on OS X.
# Run: brew install coreutils
alias ll='gls -Fh -la --color --group-directories-first'
alias o='gls -latr --color --group-directories-first'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias chrome='open -a "Google Chrome"'

# Disable Homebrew analytics.
# See: https://docs.brew.sh/Analytics.html
export HOMEBREW_NO_ANALYTICS=1

# "Put source ~/.bashrc in your .bash_profile is standard advice." See:
# https://apple.stackexchange.com/questions/12993/why-doesnt-bashrc-run-automatically
source ~/.bashrc


#*************************************#
#  The 'feel free to delete' section  #
#*************************************#

# Learn not to misspell ls (requires 'brew install sl/lolcat')
alias sl='sl | lolcat'

