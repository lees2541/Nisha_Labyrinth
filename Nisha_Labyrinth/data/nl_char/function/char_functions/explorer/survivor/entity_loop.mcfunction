#> nl_char:char_functions/explorer/survivor/entity_loop
# 캐릭과 연관된 엔티티나 구조물 루프, 해당 캐릭터가 인겜에 없어도 동작한다.
execute unless entity @e[type=interaction,tag=campfire] run return 0
execute as @n[type=interaction,tag=NL,tag=occupied,tag=campfire] at @s run effect give @a[team=explorer,distance=..4,scores={NL_food=1..}] regeneration 5 1
execute as @n[type=interaction,tag=NL,tag=occupied,tag=campfire] at @s run effect give @a[team=explorer,distance=..4,scores={NL_food=1..}] saturation 1 1
execute as @n[type=interaction,tag=NL,tag=occupied,tag=campfire] at @s run effect give @a[team=explorer,distance=..4] speed 2 0

execute as @n[type=interaction,tag=NL,tag=occupied,tag=campfire] at @s unless block ~ ~ ~ soul_campfire run tag @s remove occupied
execute as @n[type=interaction,tag=NL,tag=!occupied, tag=campfire] as @a[tag=explorer,tag=survivor,tag=no_life_gui_update] run function nl_char:char_functions/explorer/survivor/status/remove/remove_campfire with entity @s attributes[{id:"minecraft:luck"}]
execute as @n[type=interaction,tag=NL,tag=!occupied, tag=campfire] run kill @e[type=item,nbt={Item:{id:"minecraft:bowl"}}]
execute as @n[type=interaction,tag=NL,tag=!occupied, tag=campfire] run tag @s remove campfire
