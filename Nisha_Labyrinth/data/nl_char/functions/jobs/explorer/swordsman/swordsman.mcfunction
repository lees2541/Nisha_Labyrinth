function nl_char:jobs/explorer/swordsman/set_stats
function nl_char:jobs/explorer/explorer

scoreboard players display name @s NL_status_gui {"text":"\uE131","color":"white"}
scoreboard players display numberformat @s NL_status_gui fixed "-"
tag @s add swordsman
say 안녕 난 검객
