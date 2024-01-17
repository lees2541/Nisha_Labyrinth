execute as @e[tag=patrol,tag=route_B,scores={NL_mode=7},limit=1] unless data entity @s WanderTarget run data merge entity @s {WanderTarget:{X:692,Y:35,Z:594}}
execute as @e[type=text_display,tag=point5,limit=1] at @s run scoreboard players set @e[type=wandering_trader,tag=route_B,scores={NL_mode=7},distance=..3.5] NL_mode 8
