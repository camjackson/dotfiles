#!/bin/bash

for dotfile in .bashrc .gitconfig .gitignore_global .vimrc; do
  ln -s "$(pwd)/$dotfile" ~
done

mkdir -p ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
ln -s "$(pwd)/.vim/syntax" ~/.vim/syntax
