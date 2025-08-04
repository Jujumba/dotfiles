zoxide init fish | source

# Copy Working Directory
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
alias clip="wl-copy"

# Git aliases
alias g="git"
alias gs="git status"
alias ga="git a"
alias gc="git c"
alias gd="git diff"
alias gp="git push"
alias gl="git pull"

set PATH $PATH  /home/$USER/.cargo/bin

set fish_greeting ""
set fish_color_command --bold blue

bind \e\t forward-char
bind \ek up-or-search           # Alt + k -> up
bind \ej down-or-search         # Alt + j -> down
bind \ec fish_clipboard_paste   # Alt + c -> paste
bind \ee "nvim_fzf_edit"        # Alt + e -> find file and edit
bind \ef "append_fzf_search"    # Alt + f -> find file and append to prompt

function nvim_fzf_edit
    set fzf_result (fzf --border --color=16 --height ~100% --layout reverse)
    commandline --function repaint  # clear fzf output
    if test $status -ne 0
        return
    end
    commandline --replace "nvim $fzf_result"
    commandline --function execute
    # commandline --function repaint
end

function append_fzf_search
    set fzf_result (fzf --border --color=16 --height ~100% --layout reverse)
    commandline --function repaint  # clear fzf output
    if test $status -ne 0
        return
    end
    commandline --insert $fzf_result
end
