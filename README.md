# dotfiles

`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply ChronoSerrano`

## Special Instructions for Synology NAS
### Setup homebrew
Ref: https://community.synology.com/enu/forum/1/post/153781

### Install ZSH
`brew install zsh`

### GCC
`brew install gcc`

### Setup .profile
```
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export HOMEBREW_GIT_PATH=/usr/local/bin/git
export HOMEBREW_TEMP=~/tmp
```
