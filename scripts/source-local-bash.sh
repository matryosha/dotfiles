#!/bin/bash

BASHRC="${HOME}/.bashrc"
LINE_TO_ADD=". ~/.bash_local_config/bash_local"

if ! grep -q "$LINE_TO_ADD" $BASHRC; then
    echo >> $BASHRC
    echo "# Loading local configs from ~/.dotfiles" >> $BASHRC
    echo $LINE_TO_ADD >> $BASHRC

    echo ".bashrc updated"
else
    echo ".bashrc was already updated"
fi

