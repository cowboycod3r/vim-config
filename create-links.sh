#!/bin/bash

pwd=$(pwd)

cd ~

echo "origin: $pwd"

echo -n 'Creating symbolic links...'

ln -s $pwd/vim .vim
ln -s $pwd/vimrc .vimrc

echo ' done.'
ls -la .vim*

cd $pwd
