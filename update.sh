#!/bin/bash
#Copy the files from the root back into the repository

DOTFILESDIR="C:/Profile/Rob/data/dev/_dotfiles/"

cp .vimrc $DOTFILESDIR
cp .vim/config $DOTFILESDIR".vim" -r
cp .bashrc $DOTFILESDIR
cp .git_template $DOTFILESDIR -r
cp update.sh $DOTFILESDIR
