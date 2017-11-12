#!/bin/bash

pwd=$(pwd)

echo "origin: $pwd"

echo -n 'Creating symbolic links...'

cd ~

mv .vimrc .vimrc.legacy
mv .vim .vim.legacy

ln -s $pwd/vimrc .vimrc
ln -s $pwd/vim .vim

echo ' done.'
ls -la

cd $pwd
