function nl_lobby:modules/redstone_generator/macro/random_area_select with storage nl:settings redstone.rolls

#function nl_lobby:modules/redstone_generator/macro/random_color_select



execute as @e[type=marker,tag=spread] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,Tags:["spread"],CustomName:'{"text":"spread"}'}