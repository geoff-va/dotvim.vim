#!/bin/bash

if [ ! -d ~/.vim ]; then
	mkdir -p ~/.vim
	echo "Created ~/.vim/"
fi
cp -r colors ~/.vim/
echo "Copied colors dir to ~/.vim/colors"
cp .vimrc ~/.vimrc
echo "Copied .vimrc to ~/.vimrc"

# Optionally install vundle
if [ -d ~/.vim/bundle ]; then
    echo "~/.vim/bundle already exists ... not intalling"
    vim +BundleInstall +q
fi

if [ ! -d ~/.vim/bundle ]; then
    echo "No bundle dir exists at ~/.vim/bundle, installing vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&
    vim -c BundleInstall! -c quitall!
fi




