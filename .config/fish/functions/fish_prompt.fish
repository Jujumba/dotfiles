function fish_prompt
    set -l last_status $status

    if test $status -ne 0
        set dollar (set_color brred --bold) ' $ ' (set_color normal)
    else
        set dollar (set_color brgreen --bold) ' $ ' (set_color normal)
    end

    string join '' -- '['(set_color brcyan) $USER (set_color normal) (set_color --bold) '@' (set_color normal) (set_color brcyan) $hostname (set_color normal) ']' \
        ' ' (set_color --bold green) (prompt_pwd -d 2) (set_color normal) (set_color --bold brwhite) (fish_git_prompt) (set_color normal) $dollar
end
