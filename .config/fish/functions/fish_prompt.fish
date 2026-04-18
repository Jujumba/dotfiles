# set __fish_git_prompt_color yellow
# set __fish_git_prompt_char_untrackedfiles '%'
# set __fish_git_prompt_showdirtystate "yes"

function fish_prompt
    set -l last_status $status
    set dollar "> "
    if test $last_status -ne 0
        set error (string join '' (set_color brred) "[" (set_color --bold brred) $last_status (set_color normal) (set_color brred) "]") 
    else
        set error ''
    end

    string join '' (set_color --bold brgreen) (prompt_pwd) (set_color normal) (fish_git_prompt) $error $dollar
end
