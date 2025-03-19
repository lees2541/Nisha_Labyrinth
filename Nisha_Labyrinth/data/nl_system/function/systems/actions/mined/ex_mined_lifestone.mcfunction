#> nl_system:systems/actions/mined/ex_mined_lifestone
# 플레이어가 생명석을 캘 때 호출
#@context 생명석 캔 플레이어 with storage nl:buffer player
# @input
#   storage nl:buffer
#       settings.player.id
#           플레이어 id
#       settings.player.team
#           플레이어 팀
#       settings.player.character
#           현재 캐릭터
#@output
#   storage nl:in_game
#       records.player[{id:$(id)}].mined.lifestone
#       records.explorer.mined.lifestone
#@private
#@within nl_system:systems/actions/mined/mined_lifestone

say 탐험가 생명석캤덩
advancement grant @a[tag=NL,tag=explorer] only nl_system:systems/actions/mined/mined_lifestone
advancement revoke @a[tag=NL,tag=explorer] only nl_system:systems/actions/mined/mined_lifestone
$execute at @s run function nl_char:char_functions/$(team)/$(character)/mined/mined_lifestone


execute as @a[tag=explorer,tag=NL,tag=!survivor] run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:"lifestone",operator:"add",operand:"1"}


## 캔 횟수 레코드에 저장
$execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.player[{id:$(id)}].mined.lifestone int 1 run scoreboard players add #id_$(id) NL_mined_life 1
execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.explorer.mined.lifestone int 1 run scoreboard players add #explorer NL_mined_life 1