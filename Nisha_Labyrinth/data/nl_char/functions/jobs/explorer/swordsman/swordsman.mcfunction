function nl_char:jobs/explorer/swordsman/set_stats
function nl_char:jobs/explorer/explorer



tag @s add swordsman

function nl_system:modules/status_gui/profile_icon/case/default
scoreboard players display numberformat @s NL_status_gui fixed "-"

say 안녕 난 검객
