#!/bin/bash

# dotfiles should be installed in ~/dotfiles
dotfiles="$HOME/dotfiles/dotfiles"

link() {
    from="$1"
    to="$2"
    echo "Linking '$from' to '$to'"
    rm -f "$to"
    ln -s "$from" "$to"
}

# We use find instead of globing for no real reason :)
for file in $(find "$dotfiles" -name '.*' -maxdepth 1); do
    link "~/$(basename $file)" "$file"
done
