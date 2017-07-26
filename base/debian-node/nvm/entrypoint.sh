#!/bin/sh
if [ ! -d "$HOME/.nvm" ]; then
    echo '[ not exsist $HOME/.nvm. so copy from /var/origin/.nvm to $HOME ]'
    cp -r /var/origin/.nvm $HOME
  else
    echo '[ exsist $HOME/.nvm. nothing to do ]'
fi

if [ ! -f "$HOME/.bashrc" ]; then
    echo '[ not exsist $HOME/.bashrc. so copy from /var/origin/.bashrc to $HOME ]'
    cp /var/origin/.bashrc $HOME
  else
    echo '[ exsist $HOME/.bashrc. nothing to do ]'
fi

. $HOME/.bashrc
bash
