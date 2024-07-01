#> nl_system:init/init
# 데이터팩을 처음 로딩 할 때 실행, 여러 초기 수치들을 생성
# @private
# @handles
#    #nl_system:init/scoreboards/init_scoreboards
#    #nl_lobby:lobby/settings/default/init
#    #nl_system:loop/sec_loop

team add roamer
team add explorer
team add prisoner
team add NL_red
team add NL_white
team add NL_blue
team add NL_yellow
team add NL_ghost
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

team modify roamer prefix ""
team modify explorer prefix ""
team modify NL_ghost prefix ""
team modify prisoner prefix ""

function nl_system:init/scoreboards/init_scoreboards
function nl_system:init/storage/init_storage
function nl_lobby:lobby/settings/default/init
function nl_system:loop/sec_loop

say start

