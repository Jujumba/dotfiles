if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

function cd # Alias `cd` to `zoxide`
    z $argv
end

function h
    Hyprland $argv
end

function ipy
    ipython $argv
end

function p
    poweroff
end

function py
    python $argv
end

function m
    math $argv
end

function detach
    $argv &> /dev/null &
end

function cwd
    pwd | wl-copy
end

function cl
    clear
end

function ls
    eza -A --time-style=long-iso $argv
end

# Git aliases
function gs
    git status $argv
end

function ga
    git add $argv
end

function gc
    git commit $argv
end

set PATH $PATH /home/jujumba/.scripts /home/jujumba/.cargo/bin /home/jujumba/.local/bin /home/jujumba/.bun/bin

set fish_greeting ""
set fish_color_command --bold blue

bind \e\t forward-char
bind \ek up-or-search   # Alt + k
bind \ej down-or-search # Alt + j
