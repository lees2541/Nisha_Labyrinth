#> nl_system:systems/library/chest_looting/obtained_lib_item_adv
#
#


execute as @e[type=marker,tag=library,sort=nearest,tag=chest,tag=library_key] at @s align xyz unless data block ~ ~ ~ Items[].tag.tag{library_key:1b} run function nl_system:systems/library/chest_looting/obtained_function/obtained_lib_key