#!/bin/bash

CURRENT_PASSWORD_STORE_DIR=~/dev/work/devops/devops-config-uns-cryptoaccounts-livenet/store/

alias capass='PASSWORD_STORE_DIR=$CURRENT_PASSWORD_STORE_DIR pass'

# Add alias for alternate password-store
. /usr/share/bash-completion/completions/pass
_capass() {
  PASSWORD_STORE_DIR=$CURRENT_PASSWORD_STORE_DIR _pass
}

complete -o filenames -o nospace -F _capass capass
