#> nl_system:systems/library/chest_looting/obtained_lib_item_adv
#
#


execute as @e[type=marker,tag=library,tag=chest,tag=library_key] at @s align xyz unless items block ~ ~ ~ container.* *[minecraft:custom_data={library_key:1b}] run function nl_system:systems/library/chest_looting/obtained_function/obtained_lib_key

execute as @e[type=marker,tag=library,tag=chest,tag=prison_key] at @s align xyz unless items block ~ ~ ~ container.* *[minecraft:custom_data={prison_key:1b}] run tag @s remove prison_key