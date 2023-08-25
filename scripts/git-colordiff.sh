#! /bin/sh
#
# git-colordiff.sh
# Copyright (C) 2022 Ludovic Fernandez <http://github.com/SirWrexes>
#
# Distributed under terms of the MIT license.
#


# Calls `colordiff` for a side by side view of 'old-file' ($2) and 'new-file' ($5)
colordiff -Iy --difftype=diffy "$1" "$2" #| bat --file-name "$2" --style=grid,numbers,snip -ldiff
