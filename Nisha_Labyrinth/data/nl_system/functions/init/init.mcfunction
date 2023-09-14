team add roamer
team add explorer
team add NL_red
team add NL_white
team add NL_blue
team add NL_yellow
team add NL_ghost
team add prisoner
team add NL_rm_only
team add NL_ex_only

team modify NL_red color dark_red
team modify NL_white color white
team modify NL_blue color dark_blue
team modify NL_yellow color yellow
team modify NL_ghost nametagVisibility hideForOtherTeams 
team modify explorer nametagVisibility hideForOtherTeams
team modify prisoner color dark_gray
team modify NL_rm_only color dark_aqua
team modify NL_ex_only color dark_green

team modify roamer prefix {"text":" [배회자] ", "color":"dark_red", "bold":true}
team modify explorer prefix {"text":" [탐험가] ", "color":"gold", "bold":true}
team modify NL_ghost prefix {"text":"[아웃]","color":"dark_blue","bold":true}
team modify prisoner prefix {"text":"[감옥]","color":"dark_gray","bold":true}


function nl_lobby:lobby/settings/default/init

say start