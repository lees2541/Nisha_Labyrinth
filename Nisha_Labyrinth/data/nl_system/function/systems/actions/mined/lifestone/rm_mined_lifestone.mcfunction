#> nl_system:systems/actions/mined/lifestone/ex_mined_lifestone
# 플레이어가 생명석을 캘 때 호출
#@context 생명석 캔 플레이어 with storage nl:buffer player
#@private
#@within nl_system:systems/actions/mined/lifestone/mined_lifestone

say 배회자 생명석캤덩
advancement grant @a[tag=NL,tag=roamer] only nl_system:systems/actions/mined/lifestone/mined_lifestone
advancement revoke @a[tag=NL,tag=roamer] only nl_system:systems/actions/mined/lifestone/mined_lifestone
$execute at @s run function nl_char:char_functions/$(team)/$(character)/mined/mined_lifestone
execute as @e[type=marker,tag=NL,tag=chest,tag=library,tag=!lifestone,limit=1,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:"lifestone",path:"resources/lifestone"}
execute as @a[tag=roamer,tag=NL] run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:"lifestone",operator:"add",operand:"1"}


## 캔 횟수 레코드에 저장
$execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.player[{id:$(id)}].mined.lifestone int 1 run scoreboard players add #id_$(id) NL_mined_life 1
execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.roamer.mined.lifestone int 1 run scoreboard players add #explorer NL_mined_life 1