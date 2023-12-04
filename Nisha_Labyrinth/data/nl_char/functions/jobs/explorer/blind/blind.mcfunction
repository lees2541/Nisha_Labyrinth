function nl_char:jobs/explorer/blind/set_stats
function nl_char:jobs/explorer/explorer

scoreboard players display name @s NL_status_gui {"text":"\uE141","color":"white"}
scoreboard players display numberformat @s NL_status_gui fixed "-"
tag @s add blind
say 안녕 난 리신
