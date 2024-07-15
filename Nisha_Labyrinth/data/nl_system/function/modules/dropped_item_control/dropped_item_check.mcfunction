say droppeditemcheck
execute on origin if entity @s[tag=!NL] run return 0
execute on origin store result storage nl:buffer player.id int 1 run scoreboard players get @s NL_player_id
## 여기 밑 오류예외처리함
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{drop:1b,NL:1b,lifestone:1b}}}}] unless function nl_system:modules/dropped_item_control/droppable_item run return run data remove entity @s Item.components.minecraft:custom_data.drop
#execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{NL:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:0b}}}}] run function nl_system:modules/dropped_item_control/back_to_owner with entity @s Item
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{NL:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{redstone:1b}}}}] unless data entity @s Item.components.minecraft:custom_data.drop run function nl_system:modules/dropped_item_control/back_to_owner with entity @s Item
execute on origin run advancement grant @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection_buffer
#execute unless data entity @s Owner run kill @s[nbt={Item:{components:{"minecraft:custom_data":{NL:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:0b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:1b}}}}]

execute if data entity @s Item.components.minecraft:custom_data{offhand:1b} run return run kill @s

execute if data entity @s Item.components.minecraft:custom_data{lifestone:1b} if data entity @s Item{id:"minecraft:iron_hoe"} run return run kill @s

execute if data entity @s Item.components.minecraft:custom_data{redstone:1b} on origin run function nl_system:systems/item/update/redstone
execute if data entity @s Item.components.minecraft:custom_data{redstone:1b} run return run kill @s