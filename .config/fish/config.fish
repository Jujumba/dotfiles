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

set PATH $PATH /home/jujumba/.scripts /home/jujumba/.cargo/bin /home/jujumba/.local/bin /home/jujumba/.bun/bin

set fish_greeting ""
set fish_color_command --bold $fish_color_command

bind \e\t forward-char
bind \ek up-or-search   # Alt + k
bind \ej down-or-search # Alt + j
