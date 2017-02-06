# dotfiles

These dotfiles can be installed by running the following commands (requires GNU stow):

```
git clone --recursive https://github.com/artlogic/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow stow
cd
patch < .dotfiles/bashrc.patch
```

Restart your terminal to source the new config files.

## Updating

You can update by running the following commands:

```
cd ~/.dotfiles
git pull
git submodule update
stow -R stow
```

## Submodules

* stow/.nvm: https://github.com/creationix/nvm.git (tag: v0.33.0)
* stow/.pyenv: https://github.com/yyuu/pyenv.git (tag: v1.0.7)
