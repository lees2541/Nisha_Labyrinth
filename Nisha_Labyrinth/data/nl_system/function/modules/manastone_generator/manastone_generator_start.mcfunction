execute as @e[type=marker,tag=!origin,tag=manastone,tag=redstone,tag=redstone_gen] at @s run function nl_lobby:modules/redstone_generator/clear_redstone with entity @s data
function nl_system:modules/manastone_generator/macro/random_area_select with storage nl:settings manastone.rolls

function nl_system:modules/manastone_generator/macro/random_color_select

execute as @e[type=armor_stand,tag=NL,tag=manastone_gen,tag=manastone] at @s run setblock ~ ~ ~ lapis_block replace

data modify storage nl:settings manastone merge from storage nl:lobby settings.manastone

#execute as @e[type=marker,tag=spread] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:1b,NoGravity:1b,Invulnerable:1b,Small:1b,NoBasePlate:1b,Tags:["spread","NL","redstone_gen"],CustomName:'{"text":"spread"}'}