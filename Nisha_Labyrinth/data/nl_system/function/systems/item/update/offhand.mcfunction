say change
execute if items entity @s player.cursor diamond_hoe if items entity @s weapon.offhand *[!minecraft:custom_data~{NL:1b,offhand:1b}] run item replace entity @s player.cursor from entity @s weapon.offhand
clear @s diamond_hoe
item replace entity @s weapon.offhand with diamond_hoe 1 
#execute if entity @s[] at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm1 run data modify storage nl:buffer item.CustomModelData set value 10001
#execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm2 run data modify storage nl:buffer item.CustomModelData set value 10002
#execute at @e[team=roamer,limit=1,sort=nearest] if predicate nl_system:status/explorer/alarm_distance/alarm3 run data modify storage nl:buffer item.CustomModelData set value 10003
item modify entity @s weapon.offhand nl_system:systems/item/update/offhand