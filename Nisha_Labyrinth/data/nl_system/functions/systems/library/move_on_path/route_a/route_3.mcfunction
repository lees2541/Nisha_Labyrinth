execute as @e[tag=patrol,tag=route_A,scores={NL_mode=3},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:689,Y:39,Z:582}}


execute at @e[type=text_display,tag=point4,limit=1] run scoreboard players set @e[type=wandering_trader,tag=route_A,scores={NL_mode=3},distance=..3.5] NL_mode 4

execute at @e[tag=patrol,tag=route_A,scores={NL_mode=4},limit=1] as @e[type=text_display,tag=route_A,tag=gauge_bar] run function nishalabyrinth:system/prison/pickpocket/refill_pocket
#execute at @e[type=text_display,tag=point4,limit=1] run scoreboard players set @e[type=wandering_trader,tag=route_A,scores={NL_mode=3},distance=..2.5,predicate=nishalabyrinth:system/library/on_path/d_to_a] NL_mode 4