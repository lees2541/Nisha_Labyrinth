execute as @e[tag=patrol,tag=route_B,scores={NL_mode=8},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:702,Y:34,Z:596}}
execute as @e[type=text_display,tag=point7,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_B,scores={NL_mode=8},distance=..3.5] NL_mode 9

execute if entity @e[tag=patrol,tag=route_B,scores={NL_mode=9},limit=1] as @e[type=text_display,tag=route_B,tag=gauge_bar] run function nishalabyrinth:system/prison/pickpocket/refill_pocket
