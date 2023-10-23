execute as @e[type=item,nbt=!{Item:{tag:{Drop:1b}}},nbt={Item:{tag:{NL:1b}}}] if data entity @s Thrower run function nl_system:modules/dropped_item_control/dropped_item_check with entity @s


