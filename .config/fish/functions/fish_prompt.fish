function fish_prompt
    set -l last_status $status

    if test $status -ne 0
        set dollar (set_color brred) ' $ ' (set_color normal)
    else
        set dollar (set_color cyan) ' $ ' (set_color normal)
    end

    string join '' -- (set_color --bold cyan) $USER (set_color normal) \
        ':' (set_color --bold green) (prompt_pwd) (set_color normal) (set_color white) (fish_git_prompt) (set_color normal) $dollar
end
