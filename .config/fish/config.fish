zoxide init fish | source

function cwd
    pwd | wl-copy
end

# Aliases
alias cd=z
alias p=poweroff
alias m="math '$argv'"
alias ipy=ipython
alias py=python
alias cl=clear
alias objdump="objdump -M intel"
# alias ls="eza -A --time-style=long-iso"

# Git aliases
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gd="git diff"
alias gp="git push"
alias gl="git pull"

set PATH $PATH  /home/jujumba/.cargo/bin /home/jujumba/.local/bin

set fish_greeting ""
set fish_color_command --bold blue

bind \e\t forward-char
bind \ek up-or-search   # Alt + k
bind \ej down-or-search # Alt + j
