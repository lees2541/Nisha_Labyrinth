execute as @e[tag=patrol,tag=route_B,scores={NL_mode=12},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:688,Y:40,Z:582}}
execute as @e[type=text_display,tag=point4,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_B,scores={NL_mode=12},distance=..3.5] NL_mode 5
