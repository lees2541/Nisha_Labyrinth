execute as @e[tag=patrol,tag=route_B,scores={NL_mode=10},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:701,Y:39,Z:597}}
execute as @e[type=text_display,tag=point8,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_B,scores={NL_mode=10},distance=..3.5] NL_mode 11
