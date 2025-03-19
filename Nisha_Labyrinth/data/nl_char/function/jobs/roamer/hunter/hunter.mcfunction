tag @s add hunter
function nl_char:jobs/roamer/roamer

function nl_char:jobs/roamer/hunter/set_player



function nl_system:modules/status_gui/profile_icon/case/default


execute unless entity @e[type=wolf,tag=hunter,tag=pet,tag=wolf] run function nl_char:char_functions/roamer/hunter/skill/skill3/summon_wolf

say 안녕 난 헌터