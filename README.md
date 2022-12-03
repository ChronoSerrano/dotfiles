# dotfiles

## MacOS/MacBook
`sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply ChronoSerrano`

## Special Instructions for Synology NAS
### Install git via synocommunity packages
### Setup homebrew
```bash
#!/bin/bash

cat << EOF > /usr/bin/ldd
#/bin/sh
echo "ldd 2.20"
EOF
chmod 0755 /usr/bin/ldd

mkdir /home
mount -o bind "/volume1/homes" /home
```

### Setup .profile
```
# Set PATH, MANPATH, etc., for Homebrew.
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export HOMEBREW_GIT_PATH=/usr/local/bin/git
export HOMEBREW_TEMP=~/tmp
```

### Install ZSH/GCC/Chezmoi
`brew install zsh gcc chezmoi`

### Setup Chezmoi
`chezmoi init --apply ChronoSerrano`
