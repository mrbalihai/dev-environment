#!/bin/bash

# Copy the files
cp .vimrc ~/
cp .vim ~/ -r
cp .bashrc ~/
cp .git_template ~/ -r
cp update.sh ~/

# Reload the .bashrc
source ~/.bashrc

# Install the vim plugins
vim +PluginInstall +qall
