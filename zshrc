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

# antigen setup
source ~/.zsh/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train
# antigen theme agnoster
antigen theme https://gist.github.com/schminitz/9931af23bbb59e772eec schminitz

# Tell antigen that you're done.
antigen apply
