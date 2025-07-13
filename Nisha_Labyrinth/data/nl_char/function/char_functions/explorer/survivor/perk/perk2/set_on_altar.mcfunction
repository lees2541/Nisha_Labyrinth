

execute as @e[type=interaction,tag=NL,tag=!occupied,tag=swamp,tag=!mutton,limit=1,sort=random] run data merge entity @s {Tags:["NL","swamp","occupied","mutton"]}
execute as @e[type=interaction,tag=NL,tag=occupied,tag=swamp,tag=mutton] on passengers if entity @s[type=item_display,tag=NL,tag=swamp] run data modify entity @s {} merge value {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]},item:{id:"minecraft:cooked_mutton",count:1,components:{"minecraft:item_model":"explorer/survivor/survivor_protein"}}}
execute store result score @n[type=interaction,tag=NL,tag=swamp,tag=mutton] NL_timer run data get storage nl:survivor perk2.timer 20