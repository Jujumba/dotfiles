#!/usr/bin/sh
# all dirs here (except `.` and `.git`) -> ~/.config
stow -t ~/.config $(find -maxdepth 1 -not -path '.' -not -name .git -type d -printf '%P\n')
# git config -> ~ 
stow -t ~ --no-folding git
