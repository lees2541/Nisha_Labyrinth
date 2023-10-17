

##
execute as @e[type=marker,tag=!origin,tag=redstone,tag=redstone_gen] at @s run function nl_lobby:modules/redstone_generator/clear_redstone with entity @s data

## 플레이어 리셋
execute as @a[tag=NL] at @s run function nl_lobby:clear/clear_players

## 게임진행 스토리지 리셋
function nl_lobby:clear/storage/clear_interface
data modify storage nl:lobby settings set from storage nl:default settings

## 클리어 스코어보드
function nl_lobby:clear/scoreboard/clear_scoreboard





## 리셋 스코어보드



## 태그 클리어
function nl_lobby:clear/tags/clear_all

## 엔티티 제거
kill @e[type=marker,tag=NL]
kill @e[type=armor_stand,tag=NL]
kill @e[type=item_display,tag=NL]
kill @e[type=text_display,tag=NL]
kill @e[type=block_display,tag=NL]

execute as @a run function nl_char:items/give_info_book