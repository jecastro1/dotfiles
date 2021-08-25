#!/bin/zsh

mkdir $HOME/.gnupg

echo 'pinentry-program $(brew --prefix)/bin/pinentry-mac' > $HOME/.gnupg/gpg-agent.conf
echo 'use-agent' > $HOME/.gnupg/gpg.conf

chmod 700 $HOME/.gnupg

vared -p 'Enter path for gpg backup ' -c gpg_backup_path
gpg --import $gpg_backup_path 
# TODO(jaimecastro): Trust key

