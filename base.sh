#!/bin/sh

touch /root/.ssh/known_hosts
ssh-keyscan github.com >> /root/.ssh/known_hosts

USER=/home/theo/
DOT=${USER}dotfiles/
ln -s ${DOT}_screenrc ~/.screenrc
ln -s ${DOT}_vimrc ~/.vimrc
ln -s ${DOT}_vimshrc ~/.vimshrc
ln -s ${USER}.vim ~/.vim

bash screen.sh


