#!/bin/bash

if [[ -n $(which espanso) ]]; then
espanso --config_dir "$HOME"/.config/espanso/ service register
fi