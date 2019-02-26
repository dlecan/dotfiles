#!/bin/bash

set -x

dotfiles=(".bashrc" ".editorconfig" ".gitconfig" ".my-git-bash-configuration" ".profile")

dir=`pwd`

for dotfile in "${dotfiles[@]}";do
 ln -s "${dir}/${dotfile}" "${HOME}/${dotfile}"
done

# VS Code
ln -s vscode-settings.json "$HOME/.config/Code/User/settings.json"
