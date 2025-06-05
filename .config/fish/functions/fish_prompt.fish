function fish_prompt
    set -l last_status $status

    if test $status -ne 0
        set dollar (set_color brred) ' > ' (set_color normal)
    else
        set dollar (set_color cyan) ' > ' (set_color normal)
    end

    string join '' (set_color green) (prompt_pwd) (set_color normal) (fish_git_prompt) $dollar
end
