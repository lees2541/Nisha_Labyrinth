#function nl_char:jobs/explorer/guard/set_stats
tag @s add guard
function nl_char:jobs/explorer/guard/set_player
function nl_char:jobs/explorer/explorer

#scoreboard players display name @s NL_status_gui {"text":"\uE111","color":"white"}


function nl_system:modules/status_gui/profile_icon/case/default
scoreboard players display numberformat @s NL_status_gui fixed "-"



function nl_char:items/give_info_book
say 안녕 난 경호원
