#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired 
# dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles  # dotfiles directory
olddir=~/dotfiles_old   # old dotfiles backup directory
# list of files/folders to symlink in homdir
files="bashrc vimrc gvimrc Xresources i3 i3status.conf config/fontconfig/fonts.conf"
# list of parent directories that are needed
parent_dirs="config/fontconfig"

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# create the needed parent directories
for directory in $parent_dirs; do
        echo "Creating $directory"
        mkdir -p ~/.$directory
done

# move any existing dotfiles in homedir to dotfiles_old directory, 
# then create symlinks 
for file in $files; do
        echo "Moving any existing dotfiles from ~ to $olddir"
        mv ~/.$file ~/dotfiles_old/
        echo "Creating symlink to $file in home directory."
        ln -s $dir/$file ~/.$file
done
