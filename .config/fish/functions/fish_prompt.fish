function fish_prompt
    set -l last_status $status

    string join '' (set_color green) (prompt_pwd) (set_color normal) (fish_git_prompt) (set_color cyan) ' > ' (set_color normal)
end
