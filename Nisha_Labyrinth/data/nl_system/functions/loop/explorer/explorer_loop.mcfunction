#> nl_system:loop/explorer/explorer_loop
# 틱당 모든 탐험가들이 실행
# @context @a[tag=explorer,tag=NL]
# @input  
#   score 대상 {3:objective} 
#       설명 
# @output 
#   storage nl:buffer 
#       player.id: int 
#           설명 
#       player.character: string 
#           설명


## 떨어진 템 줍기
execute if entity @e[type=item,nbt={Item:{tag:{drop:0b,NL:1b}}}] as @e[type=item,nbt={Item:{tag:{drop:0b,NL:1b}}},nbt=!{PickupDelay:0s},distance=..0.5,limit=1] run data merge entity @s {PickupDelay:0s} 

## 경보기(predicate으로 거리 판별할 예정)
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{NL:1b,alarm:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{NL:1b,alarm:1b,CustomModelData:10001}}]}] if entity @e[team=roamer,distance=15..] run data modify storage nl:buffer item.CustomModelData set value 10001
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{NL:1b,alarm:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{NL:1b,alarm:1b,CustomModelData:10002}}]}] if entity @e[team=roamer,distance=7..14.9] run data modify storage nl:buffer item.CustomModelData set value 10002
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{NL:1b,alarm:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{NL:1b,alarm:1b,CustomModelData:10003}}]}] if entity @e[team=roamer,distance=..6.9] run data modify storage nl:buffer item.CustomModelData set value 10003

item modify entity @s weapon.offhand nl_char:items/explorer/alarm

#data remove storage nl:buffer item