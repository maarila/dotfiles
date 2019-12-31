## dotfiles for Ubuntu / Mac OS X

### Usage:
1. Clone the repository to your desired location on your local host:
`git clone https://github.com/maarila/dotfiles.git`
2. Change to home directory.
`cd $HOME`
3. Create a symbolic link to the dotfile:
`ln -s path/to/dotfiles/dotfile-name dotfile-name`

This enables keeping the dotfiles centralised in one directory which, in turn, makes synchronising them between machines effortless.

### Vimrc motivation:

Nordic keyboard layout is not great for Vim. Mappings in this vimrc aim to alleviate the issues. For instance,  colon ":" is mapped to "ö" instead of "shift-." and "/" is mapped to "-" instead of "shift-7". Other mappings, such as <Esc> to "jk", are more traditional.

It is also highly recommended to map Ctrl to Caps Lock on the operating system level to minimise finger travel. On Mac OS X the mapping can be changed at System Preferences -> Keyboard -> Modifier Keys. On Ubuntu, use gnome-tweak-tool:

`sudo apt install gnome-tweak-tool`

`gnome-tweaks`

Select Keyboard & Mouse -> Additional Layout Options -> Caps Lock behavior -> Caps Lock is also a Ctrl.
