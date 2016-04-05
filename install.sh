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
for file in $(find "$dotfiles" -maxdepth 1 -name '.*'); do
    symlink=~/"$(basename "$file")"

    rm -rf "$symlink"
    echo "Linking '$symlink' -> '$file'"
    ln -s "$file" "$symlink"
done
