function nl_char:jobs/explorer/blind/set_stats
function nl_char:jobs/explorer/explorer


tag @s add blind

function nl_system:modules/status_gui/change_icon/default
scoreboard players display numberformat @s NL_status_gui fixed "-"
say 안녕 난 리신
