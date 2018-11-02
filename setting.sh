#!/bin/bash

dirpath=$(cd $(dirname $0) && pwd)

if [ -e ~/.vimrc ]; then
	rm ~/.vimrc -rf
fi
ln -s ${dirpath}/_vimrc ~/.vimrc


if [ ! -e ${dirpath}/vimfiles ]; then
	mkdir ${dirpath}/vimfiles
fi
if [ ! -e ${dirpath}/vimfiles/bundle ]; then
	mkdir ${dirpath}/vimfiles/bundle
fi
if [ ! -e ${dirpath}/vimfiles/bundle/neobundle.vim ]; then
	git clone https://github.com/Shougo/neobundle.vim.git
fi
if [ ! -e ${dirpath}/vimfiles/bundle/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git
fi
if [ -e ~/.vim ]; then
	rm ~/.vim -rf
fi
ln -s ${dirpath}/vimfiles ~/.vim
