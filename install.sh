#!/bin/bash
## install.sh for emacs-epitech in /home/dugal_c/rendu/emacs-epitech
## 
## Made by Clement DUGAL
## Login   <dugal_c@epitech.net>
## 
## Started on  Mon Mar  3 18:28:48 2014 Clement DUGAL
## Last update Tue Mar  4 02:40:44 2014 Clement DUGAL
##

echo "Copying files..."
cp files/.emacs ~/
cp -r files/.emacs.d/ ~/
cp -r files/site-lisp/ /usr/share/emacs/
echo "Done!"
