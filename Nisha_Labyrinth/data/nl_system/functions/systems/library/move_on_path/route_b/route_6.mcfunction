execute as @e[tag=patrol,tag=route_B,scores={NL_mode=6},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:695,Y:34,Z:571}}
execute as @e[type=text_display,tag=point6,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_B,scores={NL_mode=6},distance=..3.5] NL_mode 7
