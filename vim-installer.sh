#!/bin/bash

TMP_DIR="/tmp/darcula_vim"

# .vim directory
if [ ! -d ~/.vim ]; then
	mkdir -p ~/.vim
	echo "Created ~/.vim/"
fi

# Colors
if [ ! -d ~/.vim/colors ]; then
	mkdir -p ~/.vim/colors
	echo "Created ~/.vim/colors/"
fi

echo "Cloning Blueshirts/darcula to $TMP_DIR"
git clone https://github.com/blueshirts/darcula.git $TMP_DIR
cp $TMP_DIR/colors/darcula.vim ~/.vim/colors/
echo "Copied darcular.vim to ~/.vim/colors/"
rm -r $TMP_DIR

# vimrc
cp .vimrc ~/.vimrc
echo "Copied .vimrc to ~/.vimrc"

# Install Vundle
if [ -d ~/.vim/bundle ]; then
    echo "~/.vim/bundle already exists ... not intalling"
    vim +BundleInstall +q
fi

if [ ! -d ~/.vim/bundle ]; then
    echo "No bundle dir exists at ~/.vim/bundle, installing vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&
    vim -c BundleInstall! -c quitall!
fi




