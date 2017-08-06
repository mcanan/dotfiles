#!/bin/bash 

# Backup dotfiles
rm -rf ~/backup_dotfiles
mkdir -p ~/backup_dotfiles
mv -f ~/.vimrc ~/backup_dotfiles/
mv -f ~/.vim ~/backup_dotfiles/
mv -f ~/.bash_profile ~/backup_dotfiles/
mv -f ~/.bash_aliases ~/backup_dotfiles/
mv -f ~/.bash_exports ~/backup_dotfiles/
mv -f ~/.dotfiles ~/backup_dotfiles/
mv -rf ~/vim ~/backup_dotfiles/
mv -f ~/.config/xfce4/terminal/terminalrc ~/backup_dotfiles/

# Clone dotfiles
mkdir -p ~/bin
mkdir -p ~/opt
git clone --recursive https://github.com/mcanan/dotfiles.git ~/.dotfiles

# Vim
git clone https://github.com/vim/vim.git ~/vim
cd ~/vim/src
./configure --enable-pythoninterp --enable-python3interp --with-features=huge --prefix=~/opt/vim
make clean && make && make install
ln -s ~/opt/vim/bin/vim ~/bin/vim
ln -s ~/.dotfiles/.vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/.vim/ ~/.vim

# Bash
ln -s ~/.dotfiles/bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bash_aliases ~/.bash_aliases
ln -s ~/.dotfiles/bash_exports ~/.bash_exports

# Tmux
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf

# Clean
rm -rf ~/vim

# Xfce terminal
ln -s ~/.dotfiles/xfce_solarized_terminal ~/.config/xfce4/terminal/terminalrc
