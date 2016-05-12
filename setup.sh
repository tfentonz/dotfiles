#!/bin/bash

SYMLINK_LIST="bash_profile
bashrc
colordiffrc
gitconfig
gitignore_global
gvimrc
inputrc
npmrc
rvmrc
tmux.conf
vim
vimrc
wgetrc"

BASE_DIR=$(cd $(dirname $0); pwd)
cd $BASE_DIR

for FILE in $SYMLINK_LIST
do
  rm -rf ~/.$FILE
  ln -s $BASE_DIR/$FILE ~/.$FILE
done

git submodule init
git submodule update

# Install Vundle.vim Plugins.
vim +PluginInstall +qall

exit 0