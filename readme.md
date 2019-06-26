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

TODO add a quick and dirty rcm tutorial here.

## Syncing up:

After your dotfiles have been symlinked, any changes you make in your home dir will really be made in this repo. So you can sync them back up to github by simply cd-ing to the .dotfiles directory, and then git-committing-and-pushing.
