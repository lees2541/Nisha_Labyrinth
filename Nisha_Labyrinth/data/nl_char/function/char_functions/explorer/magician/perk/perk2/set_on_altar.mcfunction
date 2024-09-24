

execute as @e[type=interaction,tag=NL,tag=!occupied,tag=swamp,tag=!mutton,limit=1,sort=random] run data merge entity @s {Tags:["NL","swamp","occupied","mutton"]}
execute as @e[type=interaction,tag=NL,tag=occupied,tag=swamp,tag=mutton] on passengers if entity @s[type=item_display,tag=NL,tag=swamp] run data modify entity @s item merge value {id:"minecraft:cooked_mutton",count:1b}
execute store result score @n[type=interaction,tag=NL,tag=swamp,tag=mutton] NL_timer run data get storage nl:survivor perk2.timer 20