# Dotfiles

## Installation:

First, clone this repo to your machine.

```
git clone git@github.com:phlippieb/dotfiles.git
```

Then, symlink the dotfiles. An easy way to do this is using ThoughtBot's [rcm](https://github.com/thoughtbot/rcm#installation).

### Installing rcm

On MacOS:

```
brew tap thoughtbot/formulae
brew install rcm
```

### Using rcm

Once installed, cd into this directory, then run `rcup` to symlink the dotfiles into your home dir.

## Syncing up:

After your dotfiles have been symlinked, any changes you make in your home dir will actually be made in this repo. So you can sync them back up to github by simply cd-ing to the .dotfiles directory, and then committing and pushing your changes.

# Other

If you're using this, then you're probably getting set up on a new machine. To make it a little easier, here's some links for programs and utilities you probably want to install.

### Oh My Zsh

[Follow these installation instructions](https://github.com/robbyrussell/oh-my-zsh/wiki/Installing-ZSH)

### Homebrew 

```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

[Or here's the home page](http://brew.sh/)

###  Tmux

```
brew install tmux
```

### Autojump

```
brew install autojump
```

### LiquidPrompt

[Installation instructions](https://github.com/nojhan/liquidprompt#test-drive-and-installation)

Also note that the `liquidpromptrc` file included in this dotfiles repo will not work out of the box. To use this one, the rc file should be in `~/.config/`. Try `mv`-ing the symllink? Idk.

### Gitsh

[Installation instructions](https://github.com/thoughtbot/gitsh#installing-gitsh)

Or just

```
brew tap thoughtbot/formulae
brew install gitsh
```

### Ranger

[Installation instructions](https://github.com/ranger/ranger#installing)

Or just

```
pip install ranger-fm
```

