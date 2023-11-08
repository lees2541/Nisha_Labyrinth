## 아이템이 버려질때 인벤토리 변화감지 발전과제 갱신
execute as @e[type=item,nbt=!{Item:{tag:{drop:0b}}},nbt={Item:{tag:{NL:1b}}}] if data entity @s Thrower run function nl_system:modules/dropped_item_control/dropped_item_check with entity @s

## 왼손에 아무것도 없을떄 대처
execute as @a[tag=NL,nbt=!{Inventory:[{Slot:-106b}]}] at @s run function nl_system:systems/item/update/offhand

execute as @a[tag=explorer,tag=NL] at @s run function nl_system:loop/explorer/explorer_loop
