execute as @e[tag=patrol,tag=route_B,scores={NL_mode=9},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:702,Y:40,Z:582}}
execute as @e[type=text_display,tag=point1,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_B,scores={NL_mode=9},distance=..4.5] NL_mode 10
