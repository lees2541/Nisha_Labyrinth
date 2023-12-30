#function nl_char:jobs/explorer/survivor/set_stats
function nl_char:jobs/explorer/explorer

#scoreboard players display name @s NL_status_gui {"text":"\uE111","color":"white"}

tag @s add survivor

function nl_system:modules/status_gui/change_icon/default
scoreboard players display numberformat @s NL_status_gui fixed "-"

say 안녕 난 생존가
