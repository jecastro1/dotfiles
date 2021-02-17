#!/bin/bash

ln -s "$(pwd)/gitconfig" $HOME/.gitconfig
ln -s "$(pwd)/gitignore" $HOME/.gitignore
ln -s "$(pwd)/vim" $HOME/.vim
ln -s "$(pwd)/vimrc" $HOME/.vimrc
ln -s "$(pwd)/zprofile" $HOME/.zprofile
ln -s "$(pwd)/zshrc" $HOME/.zshrc

exec zsh --login

