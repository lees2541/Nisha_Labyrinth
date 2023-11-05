#> nl_system:modules/dropped_item_control/droppable_item
#

## 생명석
say hi
execute if entity @s[nbt={Item:{tag:{lifestone:1b}}}] on origin if entity @s[scores={NL_lifestone_count=..0}] run return 0
execute if entity @s[nbt={Item:{tag:{lifestone:1b}}}] on origin run function nl_system:modules/storage/scoreboard/operation/lifestone_count/calc_lifestone {operator:remove,operand:1} 

execute if entity @s[nbt={Item:{tag:{lifestone:1b}}}] run data merge entity @s {Item:{tag:{drop:0b,CustomModelData:100000}}}
return 1
