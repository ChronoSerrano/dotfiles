#!/bin/bash

# install homebrew if it's missing
if ! command -v brew >/dev/null 2>&1; then
  echo "Installing homebrew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

system_type=$(uname -s)

if [ "$system_type" = "Darwin" ]; then
  # shellcheck disable=SC2016
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' > $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi
