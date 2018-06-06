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
git clone --depth 1 git@gitlab.sandia.gov:dzander/dotfiles.git

pushd dotfiles

# Deployment via GNU stow:
stow zsh
stow vim
stow tmux

popd

# Install vim plugins
vim +PlugInstall
```

