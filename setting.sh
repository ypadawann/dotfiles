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

bundledir=${dirpath}/vimfiles/bundle
if [ ! -e ${bundledir}/neobundle.vim ]; then
	git clone https://github.com/Shougo/neobundle.vim.git ${bundledir}/neobundle.vim
fi
if [ ! -e ${bundledir}/Vundle.vim ]; then
	git clone https://github.com/VundleVim/Vundle.vim.git ${bundledir}/Vundle.vim
fi
if [ -e ~/.vim ]; then
	rm ~/.vim -rf
fi
ln -s ${dirpath}/vimfiles ~/.vim


if [ -e ~/.gitconfig ]; then
	rm ~/.gitconfig -rf
fi
ln -s ${dirpath}/_gitconfig ~/.gitconfig
