# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/nikulaj/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# pkgfile
source /usr/share/doc/pkgfile/command-not-found.zsh

# thefuck script
alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
