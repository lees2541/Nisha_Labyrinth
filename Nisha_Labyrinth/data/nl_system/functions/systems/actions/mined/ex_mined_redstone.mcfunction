#> nl_system:systems/actions/mined/ex_mined_redstone
# 플레이어가 레드스톤을 캘 때 호출
#@context 레드스톤 캔 플레이어 with storage nl:buffer player
#@private
#@within nl_system:systems/actions/mined/mined_redstone

say 탐험가 주흔캤덩
advancement grant @a[tag=NL,tag=explorer] only nl_system:systems/actions/mined/mined_redstone
advancement revoke @a[tag=NL,tag=explorer] only nl_system:systems/actions/mined/mined_redstone
$execute at @s run function nl_char:char_functions/$(team)/$(character)/mined/mined_redstone

execute as @a[tag=explorer,tag=NL] run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:"redstone",operator:"add",operand:"4"}


## 캔 횟수 레코드에 저장
$execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.player[{id:$(id)}].mined.redstone int 1 run scoreboard players add #id_$(id) NL_mined_red 1
execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.explorer.mined.redstone int 1 run scoreboard players add #explorer NL_mined_red 1