function nl_system:modules/manastone_generator/macro/spread with entity @s data

$execute as @e[type=marker,tag=!origin,tag=spread,limit=1,tag=redstone_gen,tag=!redstone,sort=random] at @s run function nl_system:modules/manastone_generator/macro/place_manastone {tag:$(tag)}
execute as @e[type=armor_stand,tag=manastone,tag=manastone_gen] at @s run tag @e[type=marker,tag=redstone_gen,tag=spread,limit=1,sort=nearest,distance=..0.3] add redstone
execute as @e[type=armor_stand,tag=manastone,tag=manastone_gen] at @s run tag @e[type=marker,tag=redstone_gen,tag=spread,limit=1,sort=nearest,distance=..0.3] add manastone

kill @e[type=marker,tag=spread,tag=!origin,tag=!redstone,tag=NL,tag=redstone_gen]

