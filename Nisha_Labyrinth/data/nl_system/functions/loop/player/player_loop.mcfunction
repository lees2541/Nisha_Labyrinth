#> nl_system:loop/player/player_loop
# 플레이어 루프
#@context 모든 플레이어[tag:NL]
#@private
#@within nl_system:loop/loop




## 아이템이 버려질때 인벤토리 변화감지 발전과제 갱신
execute as @e[type=item,nbt=!{Item:{tag:{drop:0b}}},nbt={Item:{tag:{NL:1b}}}] if data entity @s Thrower run function nl_system:modules/dropped_item_control/dropped_item_check with entity @s

## 왼손에 아무것도 없을떄 대처
execute if entity @s[tag=NL,nbt=!{Inventory:[{Slot:-106b}]}] at @s run function nl_system:systems/item/update/offhand


execute if entity @s[tag=explorer,tag=NL] at @s run function nl_system:loop/player/explorer/explorer_loop
execute if entity @s[tag=roamer,tag=NL] at @s run function nl_system:loop/player/roamer/roamer_loop