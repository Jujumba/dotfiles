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

function nullibreoffice
    libreoffice $argv &> /dev/null &
end

function m
    math $argv
end
function detach
    $argv &> /dev/null &
end

set PATH $PATH /home/jujumba/.scripts /home/jujumba/.cargo/bin /home/jujumba/.local/bin

set fish_greeting ""
