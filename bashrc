#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export EDITOR=vim
export TERM=xterm-256color

# pkgfile
source /usr/share/doc/pkgfile/command-not-found.bash

# thefuck script
alias fuck='eval $(thefuck $(fc -ln -1)); history -r'
# You can use whatever you want as an alias, like for Mondays:
alias FUCK='fuck'

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

#Wine variables
export WINEPREFIX=$HOME/.config/wine/
export WINEARCH=win32

export QSYS_ROOTDIR="/home/nikulaj/altera/15.0/quartus/sopc_builder/bin"

export ALTERAOCLSDKROOT="/home/nikulaj/altera/15.0/hld"
