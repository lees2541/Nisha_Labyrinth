say lock on!

tag @s add lock_on

tag @n[team=roamer] add lock_on

damage @s 2 magic by @s

scoreboard players set @s NL_timer 40

execute as @e[tag=lock_on] at @s run summon item_display ~ ~1 ~ {Tags:["test","NL","perk2","magician","vfx"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"test/junst/blood_prison"}}}
scoreboard players set @s NL_mode 1
