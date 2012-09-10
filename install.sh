#!/bin/bash

# copy all the dotfiles to home
for i in `ls -A | egrep '^\.'`
do
    cp $i ~
done

# install oh-my-zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

cp chadkeck.zsh-theme ~/.oh-my-zsh/themes/
