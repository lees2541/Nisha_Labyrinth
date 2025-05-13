#> nl_system:systems/actions/mined/ex_mined_manastone
# 플레이어가 마석을 캘 때 호출
# @context 마석 캔 플레이어 with storage nl:buffer player
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
#       records.player[{id:$(id)}].mined.manastone
#       records.explorer.mined.manastone
#@private
#@within nl_system:systems/actions/mined/mined_manastone
#@handles nl_char:char_functions/$(team)/$(character)/mined/mined_manastone

say 탐험가 마석캤덩
advancement grant @a[tag=NL,tag=explorer] only nl_system:systems/actions/mined/mined_manastone
advancement revoke @a[tag=NL,tag=explorer] only nl_system:systems/actions/mined/mined_manastone
$execute at @s run function nl_char:char_functions/$(team)/$(character)/mined/mined_manastone
execute at @s run playsound minecraft:maseok_break block @a[team=explorer] ^ ^ ^0.5 1 2 0.4



## 캔 횟수 레코드에 저장
$execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.player[{id:$(id)}].mined.manastone int 1 run scoreboard players add #id_$(id) NL_mined_mana 1
execute if data storage nl:in_game status{ongoing:1} store result storage nl:in_game records.explorer.mined.manastone int 1 run scoreboard players add #explorer NL_mined_mana 1