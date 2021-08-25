#!/bin/zsh

mkdir $HOME/.gnupg

echo 'pinentry-program $(brew --prefix)/bin/pinentry-mac' > $HOME/.gnupg/gpg-agent.conf
echo 'use-agent' > $HOME/.gnupg/gpg.conf

chmod 700 $HOME/.gnupg

vared -p 'Enter path for gpg key backup ' -c gpg_key_backup_path
gpg --import $gpg_key_backup_path 

vared -p 'Enter path for gpg trustdb backup' -c gpg_trustdb_backup_path
rm $HOME/.gnupg/trustdb.gpg
gpg --import-ownertrust < $gpg_trustdb_backup_path

