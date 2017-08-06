#!/bin/bash 

# Backup dotfiles
rm -rf $HOME/backup_dotfiles
mkdir -p $HOME/backup_dotfiles
mv -f $HOME/.vimrc $HOME/backup_dotfiles/
mv -f $HOME/.vim $HOME/backup_dotfiles/
mv -f $HOME/.bash_profile $HOME/backup_dotfiles/
mv -f $HOME/.bash_aliases $HOME/backup_dotfiles/
mv -f $HOME/.bash_exports $HOME/backup_dotfiles/
mv -f $HOME/.dotfiles $HOME/backup_dotfiles/
mv -rf $HOME/vim $HOME/backup_dotfiles/

# Clone dotfiles
mkdir -p $HOME/bin
mkdir -p $HOME/opt
git clone --recursive https://github.com/mcanan/dotfiles.git $HOME/.dotfiles

# Vim
git clone https://github.com/vim/vim.git $HOME/vim
cd $HOME/vim/src
./configure --enable-pythoninterp --enable-python3interp --with-features=huge --prefix=$HOME/opt/vim
make clean && make && make install
ln -s $HOME/opt/vim/bin/vim $HOME/bin/vim
ln -s $HOME/.dotfiles/.vim/vimrc $HOME/.vimrc
ln -s $HOME/.dotfiles/.vim/ $HOME/.vim

# Bash
ln -s $HOME/.dotfiles/bash_profile $HOME/.bash_profile
ln -s $HOME/.dotfiles/bash_aliases $HOME/.bash_aliases
ln -s $HOME/.dotfiles/bash_exports $HOME/.bash_exports

# Tmux
ln -s $HOME/.dotfiles/tmux.conf $HOME/.tmux.conf

# Clean
rm -rf $HOME/vim
