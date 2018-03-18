#!/bin/bash

pwd=$(pwd)

echo "origin: $pwd"

echo -n 'Creating symbolic links...'

cd ~

mv .vim .vim.legacy
mv .vimrc .vimrc.legacy

ln -s $pwd .vim
ln -s $pwd/vimrc .vimrc

echo ' done.'
ls -la .vim*

cd $pwd
