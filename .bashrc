# Set colors for ls
export CLICOLOR=1


#*************************************#
#  The 'feel free to delete' section  #
#*************************************#

# Show a greeting when opening terminal.
# Please note: fortune/cowsay/lolcat all need to be installed with 'brew install'
if [ -x /usr/local/bin/fortune -a -x /usr/local/bin/cowsay -a -x /usr/local/bin/lolcat ]; then
  fortune -s | cowsay | lolcat
fi

# View random cowsay by replacing the above cowsay with the following:
# cowsay -f `ls -1 /usr/local/Cellar/cowsay/3.04/share/cows/*.cow | sort -R | head -1` -n

