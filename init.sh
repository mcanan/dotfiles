#!/bin/bash 
sudo apt-get update

# Git
sudo apt-get install -y git

# Python
sudo apt-get install -y git python3-dev python3-pip

# Vim, tmux
sudo apt-get remove -y vim vim-common
sudo apt-get install -y build-essential libncurses5-dev ftp ctags
sudo apt-get install -y tmux

# Others
sudo apt-get install -y bc
