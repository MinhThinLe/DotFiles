# Dotfiles collection

If you wish to install these, first, setup [home manager](https://nix-community.github.io/home-manager/index.xhtml#ch-installation)

Then clone the repo to its designated location with

```sh
git clone -C $HOME/.config/ https://github.com/MinhThinLe/dotfiles
```

Move the repo to its correct location (this could be done much more elegantly
but I'm too much of a noob with git)

```sh
mv $HOME/.config/dotfiles $HOME/.config/home-manager
```

Then install it with

```sh
home-manager switch
```
