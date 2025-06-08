#> nl_system:loop/player/explorer/explorer_loop
# 틱당 모든 탐험가들이 실행
# @context @a[tag=explorer,tag=NL]
#
# @within nl_system:loop/loop

## 캐릭터별 루프

execute if entity @s[tag=survivor] run function nl_char:char_functions/explorer/survivor/loop
execute if entity @s[tag=magician] run function nl_char:char_functions/explorer/magician/loop
execute if entity @s[tag=guard] run function nl_char:char_functions/explorer/guard/loop


## 생명석 및 레드스톤 칸 감지
#execute unless items entity @s hotbar.6 *[minecraft:custom_data~{offhand:1b}] at @s run function nl_system:systems/item/update/offhand
execute unless items entity @s hotbar.6 *[custom_data~{NL:1b,lifestone:1b}] run function nl_system:systems/item/update/lifestone
execute unless items entity @s hotbar.7 *[custom_data~{NL:1b,redstone:1b}] run function nl_system:systems/item/update/redstone

execute if score @s NL_death matches 1.. if function #nl_system:load_player_info run function nl_system:systems/death/death_trigger with storage nl:buffer player

## 떨어진 템 줍기
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{drop:0b,NL:1b}}}}] as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{drop:0b,NL:1b}}}},nbt=!{PickupDelay:0s},distance=..0.5,limit=1] run data merge entity @s {PickupDelay:0s} 

## 경보기(predicate으로 거리 판별할 예정)

#execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm1 run say hi
#execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm2 run say ho
#execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm3 run say hoey

execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm1 run data modify storage nl:buffer item.CustomModelData set value 1.0
execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm2 run data modify storage nl:buffer item.CustomModelData set value 2.0
execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm3 run data modify storage nl:buffer item.CustomModelData set value 3.0

#data modify storage nl:buffer item.CustomModelData set value 2.0
execute if data storage nl:buffer item.CustomModelData run item modify entity @s weapon.offhand nl_char:items/explorer/alarm
data remove storage nl:buffer item.CustomModelData

## 배회자쪽으로 시선옮기면 불 깜박거리기
execute if score @s NL_alarm_timer matches 0 at @e[team=roamer,limit=1,sort=nearest] unless predicate nl_system:status/explorer/alarm_distance/alarm1 at @s anchored eyes if function nl_system:systems/flashlight/alarm/condition_check run scoreboard players set @s NL_alarm_timer 20

## status_gui 업데이트
execute if function #nl_system:load_player_info run function nl_system:modules/status_gui/buff_icon/update/update_icon with storage nl:buffer player
function nl_system:modules/status_gui/debuff_icon/update/update_icon

## 타이머 루프
function nl_system:loop/player/explorer/explorer_timer