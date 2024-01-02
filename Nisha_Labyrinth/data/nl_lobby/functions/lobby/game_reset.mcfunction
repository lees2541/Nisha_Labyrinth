
data modify storage nl:in_game status.ongoing set value 0

## 스케쥴된 함수 취소
schedule clear nl_system:loop/countdown/rm_enterance_last_count
schedule clear nl_system:loop/countdown/rm_enterance
##
execute as @e[type=marker,tag=!origin,tag=redstone,tag=redstone_gen] at @s run function nl_lobby:modules/redstone_generator/clear_redstone with entity @s data

## 플레이어 리셋
execute as @a[tag=NL] at @s run function nl_lobby:clear/clear_players

## 게임진행 스토리지 리셋
function nl_lobby:clear/storage/clear_interface
data modify storage nl:lobby settings set from storage nl:default settings

## 클리어 스코어보드
function nl_lobby:clear/scoreboard/clear_scoreboard
function nl_lobby:clear/bossbar/clear_bossbar




## 리셋 스코어보드



## 태그 클리어
function nl_lobby:clear/tags/clear_all

## 엔티티 제거
kill @e[type=marker,tag=NL]
kill @e[type=armor_stand,tag=NL]
kill @e[type=item_display,tag=NL]
kill @e[type=text_display,tag=NL]
kill @e[type=block_display,tag=NL]
kill @e[type=item,nbt={Item:{tag:{NL:1b}}}]
kill @e[type=item,tag=NL]
kill @e[type=interaction,tag=NL]

execute as @e[type=glow_item_frame,tag=NL] run data merge entity @s {Fixed:1b,Invulnerable:1b,Tags:["NL","cave"]}


clear @a
advancement revoke @a everything
execute as @a run function nl_char:items/give_info_book


say 게임이 리셋 되었습니다