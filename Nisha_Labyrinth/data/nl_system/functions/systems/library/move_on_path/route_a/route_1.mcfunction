execute as @e[tag=patrol,tag=route_A,scores={NL_mode=1},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:702,Y:39,Z:565}}
execute as @e[type=text_display,tag=point2,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_A,scores={NL_mode=1},distance=..3.5] NL_mode 2
#execute as @e[type=text_display,tag=point2,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_A,scores={NL_mode=1},distance=..3.5,predicate=nishalabyrinth:system/library/on_path/b_to_c] NL_mode 2