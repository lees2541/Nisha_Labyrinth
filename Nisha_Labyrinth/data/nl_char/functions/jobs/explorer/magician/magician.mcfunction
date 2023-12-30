function nl_char:jobs/explorer/magician/set_stats
function nl_char:jobs/explorer/explorer

tag @s add magician
function nl_system:modules/status_gui/change_icon/default
scoreboard players display numberformat @s NL_status_gui fixed "-"
say 난 주술사