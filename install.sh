#!/bin/bash

# copy all the dotfiles to home
for i in `ls -A | egrep '^\.'`
do
    cp $i ~
done
