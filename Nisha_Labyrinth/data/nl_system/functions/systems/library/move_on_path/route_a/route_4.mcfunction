execute as @e[tag=patrol,tag=route_A,scores={NL_mode=4},limit=1] unless data entity @s WanderTarget run data merge entity @e[type=wandering_trader,limit=1,tag=route_A,tag=lib_guardian] {WanderTarget:{X:702,Y:39,Z:582}}

 

execute at @e[type=text_display,tag=point1,limit=1] run scoreboard players set @e[type=wandering_trader,tag=route_A,scores={NL_mode=4},distance=..2.5] NL_mode 1


#execute at @e[type=text_display,tag=point1,limit=1] run scoreboard players set @e[type=wandering_trader,tag=route_A,scores={NL_mode=4},distance=..2.5,predicate=nishalabyrinth:system/library/on_path/a_to_b] NL_mode 1