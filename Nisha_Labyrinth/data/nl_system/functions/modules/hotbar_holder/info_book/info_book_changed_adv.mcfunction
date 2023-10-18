execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book",tag:{Info:1b}}]}] run advancement revoke @s only nl_system:modules/hotbar_holder/info_book/info_book_changed_buffer
execute if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:written_book",tag:{Info:1b}}]}] run return 0
clear @s written_book{NL:1b,Info:1b}
execute if entity @s[nbt={Inventory:[{Slot:8b}]}] at @s run summon item ~ ~ ~ {PickupDelay:1,Tags:["NL","base"],Item:{id:"minecraft:paper",Count:1b}}
execute as @e[type=item,tag=base,tag=NL] at @s if data entity @p Inventory[{Slot:8b}] unless data entity @p Inventory[{Slot:8b,id:"minecraft:written_book",tag:{Info:1b,NL:1b}}] run data modify entity @s Item set from entity @p[nbt={Inventory:[{Slot:8b}]},nbt=!{Inventory:[{Slot:8b,id:"minecraft:written_book"}]},limit=1,distance=..1] Inventory[{Slot:8b}]



advancement revoke @s only nl_system:modules/hotbar_holder/info_book/info_book_changed_buffer