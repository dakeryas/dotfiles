# dotfiles
Configuration files for Linux software

# Pre-requisites
OhMyZsh must be installed already, e.g. via
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Install
```
$ git clone --bare git@github.com:dakeryas/dotfiles.git ~/.dotfiles 
$ git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout master
```
