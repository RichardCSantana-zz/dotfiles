#!/bin/bash
if [ ! -d ~/backup ]; then
  mkdir ~/backup
fi

mv ~/.gitconfig ~/backup/.gitconfig
ln -s "${PWD}/.gitconfig" ~/.gitconfig

rm -rf ~/oh-my-zsh
ln -s "${PWD}/.oh-my-zsh" ~/oh-my-zsh

mv ~/.zshrc ~/backup/.zshrc
ln -s "${PWD}/.zshrc" ~/.zshrc

chsh -s /bin/zsh
