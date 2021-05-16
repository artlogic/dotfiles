# dotfiles

These dotfiles can be installed by running the following commands (requires GNU stow):

```
git clone --recursive https://github.com/artlogic/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow config
cd
patch < .dotfiles/bashrc.patch
```

If using fish, the patch step can be skipped.

Restart your terminal to source the new config files.

## emacs daemon

(manual step for now)

```
systemctl enable --user --now emacs
```

## Updating

You can update by running the following commands:

```
cd ~/.dotfiles
git pull
git submodule update
stow -R config
```

## Submodules

* config/.nvm: https://github.com/creationix/nvm.git (tag: v0.38.0)
* config/.pyenv/root: https://github.com/yyuu/pyenv.git (tag: 1.2.27)
* config/.pyenv/pyenv-virtualenv: https://github.com/yyuu/pyenv-virtualenv.git (tag: v1.1.5)
* config/.rbenv/root: https://github.com/rbenv/rbenv.git (tag: v1.1.2)
* config/.rbenv/ruby-build: https://github.com/rbenv/ruby-build.git (tag: v20210510)
