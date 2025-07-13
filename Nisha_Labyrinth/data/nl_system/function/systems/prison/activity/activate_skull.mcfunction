#> nl_system:systems/prison/activity/activate_skull
#
#

# @within nl_system:systems/actions/interactions/prison/skull/interact_adv

say hoho
$execute as @e[type=interaction,tag=skull,tag=jail,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] at @s run say hohhohoho
$execute as @e[type=interaction,tag=skull,tag=jail,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] at @s run data modify entity @n[type=item_display,tag=skull,] item.components.minecraft:item_model set value "map/prison/prison_bone_on"
$execute as @e[type=interaction,tag=skull,tag=jail,nbt={interaction:{player:$(UUID)}},limit=1,sort=nearest] at @s run kill @s
clear @s paper[minecraft:custom_data~{NL:1b,soul_herb:1b}] 1

execute unless entity @e[type=interaction,tag=skull,tag=jail] run advancement grant @s only nl_system:systems/actions/interactions/vine/used_bone_meal