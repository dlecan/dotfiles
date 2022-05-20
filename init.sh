#!/bin/bash

set -x

dotfiles=(".bashrc" ".editorconfig" ".gitconfig" ".bash_profile" ".profile" ".gitconfig-work" ".bashrc.d")

dir=`pwd`

for dotfile in "${dotfiles[@]}";do
 ln -s "${dir}/${dotfile}" "${HOME}/${dotfile}"
done

# VS Code
ln -s "$dir/vscode-settings.json" "$HOME/.config/Code/User/settings.json"
