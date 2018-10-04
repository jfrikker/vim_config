#! /bin/sh
ln -s ~/.vim_config/vimrc ~/.vimrc
ln -s ~/.vim_config/gvimrc ~/.gvimrc 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
