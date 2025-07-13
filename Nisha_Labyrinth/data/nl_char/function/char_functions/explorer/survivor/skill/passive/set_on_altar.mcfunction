execute as @e[type=interaction,tag=NL,tag=!occupied,tag=swamp,tag=!berry,limit=1,sort=random] run data merge entity @s {Tags:["NL","swamp","occupied","berry"]}
execute as @e[type=interaction,tag=NL,tag=occupied,tag=swamp,tag=berry] on passengers if entity @s[type=item_display,tag=NL,tag=swamp] run data modify entity @s item merge value {id:"minecraft:sweet_berries",count:1,components:{"minecraft:item_model":"explorer/survivor/survivor_food"}}

execute if entity @s[scores={NL_perk=2}] run function nl_char:char_functions/explorer/survivor/perk/perk2/set_on_altar