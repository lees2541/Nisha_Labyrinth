function nl_lobby:modules/redstone_generator/macro/random_area_select with storage nl:settings redstone.rolls

function nl_lobby:modules/redstone_generator/macro/random_color_select

execute as @e[type=armor_stand,tag=NL,tag=redstone_gen,tag=redstone] at @s run setblock ~ ~ ~ redstone_ore replace

#execute as @e[type=marker,tag=spread] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,Tags:["spread","NL","redstone_gen"],CustomName:'{"text":"spread"}'}