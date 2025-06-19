# function fish_right_prompt
#     set -l last_status $status

#     if test $status -ne 0
#         set prompt_status (set_color red) $last_status (set_color normal)
#     else
#         set prompt_status (set_color normal) '' 
#     end

#     set slash  (set_color green) "/" (set_color normal)
#     set colon  (set_color green) ":" (set_color normal)
#     set day    (set_color brmagenta) (date +%d) (set_color normal)
#     set month  (set_color brmagenta) (date +%m) (set_color normal)
#     set year   (set_color brmagenta) (date +%Y) (set_color normal)
#     set hour   (set_color brmagenta) (date +%H)  (set_color normal)
#     set minute (set_color brmagenta) (date +%M)  (set_color normal)

#     string join '' $prompt_status ' ' $day $slash $month $slash $year ' ' $hour $colon $minute
# end
