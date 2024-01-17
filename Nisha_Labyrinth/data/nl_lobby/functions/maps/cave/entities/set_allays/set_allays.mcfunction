kill @e[tag=allay,tag=NL]

execute as @e[type=marker,tag=NL,tag=area,tag=!prison] at @s run summon allay ~ ~ ~ {Invulnerable:1b,Team:"NL_ex_only",PersistenceRequired:1b,NoAI:1b,CanPickUpLoot:0b,CanDuplicate:0b,Tags:["NL","allay"],Passengers:[{id:"minecraft:interaction",width:0.41f,height:-0.65f,response:1b,Tags:["NL","allay"]},{id:"minecraft:interaction",width:0.41f,height:0.03f,response:1b,Tags:["NL","allay"]},{id:"minecraft:marker",Tags:["NL","allay"]}]}
execute as @e[tag=NL,tag=allay] at @s run data modify entity @s Tags append from entity @e[type=marker,tag=area,sort=nearest,limit=1] data.tag
execute as @e[type=marker,tag=NL,tag=allay] at @s run data modify entity @s data.tag set from entity @e[type=marker,tag=area,sort=nearest,limit=1] data.tag
scoreboard players set @e[type=allay,tag=NL,tag=allay] NL_mode 0