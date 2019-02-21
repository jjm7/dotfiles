# dotfiles
dotfiles I've curated over the years
* [based on this website](https://alexpearce.me/2016/02/managing-dotfiles-with-stow/) and Dylan Anderson's setup

# Requirements


* git
* tmux
* vim v7.4 or newer
* [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)

Installation - YMMV

```bash
# Git dotfiles
git clone --depth 1 https://github.com/jjm7/dotfiles.git

#go into the directory
pushd dotfiles

# Deployment via GNU stow:
stow zsh
stow vim
stow tmux

#pop out of the direcotry
popd

# you might need to clone Vundle in
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install vim plugins
vim +PlugInstall


```

