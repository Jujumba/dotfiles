function fish_prompt
    set -l last_status $status
    if test $last_status -ne 0
        set dollar (set_color red) ' $ ' (set_color normal)
    else
        set dollar (set_color green) ' $ ' (set_color normal)
    end

    string join '' (set_color --bold green) (prompt_pwd) (set_color normal) (fish_git_prompt) (set_color cyan) $dollar (set_color normal)
end
