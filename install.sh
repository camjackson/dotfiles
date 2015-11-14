#!/bin/bash

for dotfile in .bashrc .gitconfig .gitignore_global .vimrc; do
  ln -s "$(pwd)/$dotfile" ~
done

mkdir -p ~/.vim
ln -s "$(pwd)/.vim/syntax" ~/.vim/syntax
