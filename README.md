# dotfiles
Configuration files for Linux software

# Pre-requisites
OhMyZsh must be installed already, e.g. via
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

# Install
Set-up the empty repository
```
git clone --bare git@github.com:dakeryas/dotfiles.git ~/.dotfiles
```
Checkout the config files
```
git --git-dir=$HOME/.dotfiles --work-tree=$HOME checkout master
```
