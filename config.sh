#!/bin/bash
 
mv $HOME/.ssh/config $HOME/.ssh/config_bak
mv $HOME/.gitconfig $HOME/.gitconfig_bak
mv $HOME/.gitignore $HOME/.gitignore_bak
mv $HOME/.vim $HOME/.vim_bak
mv $HOME/.vimrc $HOME/.vimrc_bak
mv $HOME/.zprofile $HOME/.zprofile_bak
mv $HOME/.zshrc $HOME/.zshrc_bak

ln -s "$(pwd)/ssh/config" $HOME/.ssh/config
ln -s "$(pwd)/gitconfig" $HOME/.gitconfig
ln -s "$(pwd)/gitignore" $HOME/.gitignore
ln -s "$(pwd)/vim" $HOME/.vim
ln -s "$(pwd)/vimrc" $HOME/.vimrc
ln -s "$(pwd)/zprofile" $HOME/.zprofile
ln -s "$(pwd)/zshrc" $HOME/.zshrc

exec zsh --login

