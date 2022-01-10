#!/bin/bash

for dotfile in .bashrc .bash_profile .gitconfig .gitignore_global .vimrc; do
  [ -e ~/$dotfile ] || ln -s "$(pwd)/$dotfile" ~
done

cd
ln -s .bashrc .zshrc
cd -

mkdir -p ~/.vim
[ -e ~/.vim/bundle/Vundle.vim ] ||  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
[ -e ~/.vim/syntax ] || ln -s "$(pwd)/.vim/syntax" ~/.vim/syntax
