
execute on origin if entity @s[tag=!NL] run return 0
execute on origin store result storage nl:buffer player.id int 1 run scoreboard players get @s NL_player_id
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{drop:1b,NL:1b}}}}] unless function nl_system:modules/dropped_item_control/droppable_item run return run data remove entity @s Item.components.minecraft:custom_data.drop
execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{NL:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:0b}}}}] run function nl_system:modules/dropped_item_control/back_to_owner with entity @s Item

execute on origin run advancement grant @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection_buffer
kill @s[nbt={Item:{tag:{NL:1b}}},nbt=!{Item:{tag:{drop:0b}}},nbt=!{Item:{tag:{drop:1b}}}]