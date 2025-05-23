#> nl_system:loop/player/roamer/roamer_loop
# 틱당 모든 탐험가들이 실행
# @context @a[tag=roamer,tag=NL]
#
# @within nl_system:loop/loop


## 캐릭터 별 루프 실행
execute if entity @s[tag=hunter] run function nl_char:char_functions/roamer/hunter/loop


## 스코어보드



## 생명석 및 레드스톤 칸 감지
execute as @s[tag=NL,nbt=!{Inventory:[{Slot:6b}]}] at @s run function nl_system:systems/item/update/lifestone


## 떨어진 템 줍기
execute if entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{drop:0b,NL:1b}}}}] as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{drop:0b,NL:1b}}}},nbt=!{PickupDelay:0s},distance=..0.5,limit=1] run data merge entity @s {PickupDelay:0s} 

## 경보기(predicate으로 거리 판별할 예정)
execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm1 run data modify storage nl:buffer item.CustomModelData set value 10001
execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm2 run data modify storage nl:buffer item.CustomModelData set value 10002
execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm3 run data modify storage nl:buffer item.CustomModelData set value 10003


execute if data storage nl:buffer item.CustomModelData run item modify entity @s weapon.offhand nl_char:items/explorer/alarm

data remove storage nl:buffer item.CustomModelData