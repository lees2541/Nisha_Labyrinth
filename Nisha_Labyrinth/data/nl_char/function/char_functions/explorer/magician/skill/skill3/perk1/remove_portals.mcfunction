execute at @n[type=interaction,tag=NL,tag=out_portal] run playsound minecraft:entity.creaking.death block @a ~ ~ ~ 1 1 0.5
execute as @n[type=interaction,tag=NL,tag=!occupied, tag=out_portal] as @a[tag=explorer,tag=survivor] run function nl_char:char_functions/explorer/magician/status/remove/remove_portal with entity @s attributes[{id:"minecraft:luck"}]

execute as @n[type=interaction,tag=NL,tag=occupied,tag=in_portal] run function nl_system:systems/swamp/default/set_default
execute as @n[type=interaction,tag=NL,tag=occupied,tag=out_portal] run function nl_system:systems/swamp/default/set_default
#execute as @n[type=interaction,tag=NL,tag=occupied,tag=out_portal] run tag @s remove occupied

#execute as @n[type=interaction,tag=NL,tag=!occupied, tag=out_portal] run tag @s remove out_portal

#execute as @n[type=interaction,tag=NL,tag=occupied,tag=in_portal] run tag @s remove occupied

#execute as @n[type=interaction,tag=NL,tag=!occupied, tag=in_portal] run tag @s remove in_portal

