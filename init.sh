#!/bin/bash 
sudo apt-get update

# Git
sudo apt-get install -y git

# Python
sudo apt-get install -y git python-dev python3-dev python-pip python3-pip pep8 pylint
sudo pip install jedi scikit-learn numpy pandas scipy nltk ipython
#python -m nltk.downloader stopwords

# Vim, tmux
sudo apt-get remove -y vim vim-common
sudo apt-get install -y build-essential libncurses5-dev ftp ctags
sudo apt-get install -y tmux
