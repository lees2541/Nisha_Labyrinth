#> nl_system:modules/dropped_item_control/droppable_item
#

## 공통
data merge entity @s[type=item] {PickupDelay:1000s}
## 생명석

execute if entity @s[nbt={Item:{components:{"minecraft:custom_data":{lifestone:1b}}}}] on origin if entity @s[scores={NL_lifestone_count=..0}] run return fail
execute if entity @s[nbt={Item:{tag:{lifestone:1b}}}] on origin run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:lifestone,operator:remove,operand:1} 

execute if entity @s[nbt={Item:{tag:{lifestone:1b}}}] run data merge entity @s {Item:{tag:{drop:0b,CustomModelData:100000}}}
return 1
