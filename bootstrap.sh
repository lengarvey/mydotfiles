#!/bin/bash

# clone submodules
git submodule update --init --recursive

# change to zsh
chsh -s /bin/zsh

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# symlink dotfiles
ln -s ~/.dotfiles/direnvrc ~/.direnvrc
ln -s ~/.dotfiles/gitignore ~/.gitignore
ln -s ~/.dotfiles/gitconfig ~/.gitconfig
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/.dotfiles/zshrc ~/.zshrc
ln -s ~/.dotfiles/vimrc ~/.vim
ln -s ~/.dotfiles/vimrc/.vimrc ~/.vimrc

# install brewfile
brew tap Homebrew/bundle

echo "Run brew bundle!"
