#!/usr/bin/sh
# all dirs here (except `.` and `.git`) -> ~/.config
stow .config
# git config -> ~ 
stow --no-folding git
