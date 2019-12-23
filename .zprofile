# add directories for cd command to find
export CDPATH=.:$HOME:/usr/local/share:$HOME/code

# highlight grep results
export GREP_OPTIONS='--color=auto'

# highlight man pages
export LESS_TERMCAP_mb=$'\E[01;31m' # start blink
export LESS_TERMCAP_md=$'\E[01;33m' # start bold
export LESS_TERMCAP_me=$'\E[0m' # turn off bold, blink, underline
export LESS_TERMCAP_se=$'\E[0m' # stop standout
export LESS_TERMCAP_so=$'\E[01;42;30m' # start standout
export LESS_TERMCAP_ue=$'\E[0m' # stop underline
export LESS_TERMCAP_us=$'\E[01;36m' # start underline

# add support for Ruby's package manager rbenv
# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init -)"

# Set aliases
# Please note: 'gls' command requires coreutils to be installed on OS X.
# Run: brew install coreutils
alias l='gls -Fh -la --color --group-directories-first'
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


#*************************************#
#  The 'feel free to delete' section  #
#*************************************#

# Learn not to misspell ls (requires 'brew install sl/lolcat')
alias sl='sl | lolcat'

