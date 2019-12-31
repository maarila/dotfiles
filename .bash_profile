# load .profile should it exist
if [ -f ~/.profile ]; then
    source ~/.profile
fi

# load .bashrc should it exist
if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
