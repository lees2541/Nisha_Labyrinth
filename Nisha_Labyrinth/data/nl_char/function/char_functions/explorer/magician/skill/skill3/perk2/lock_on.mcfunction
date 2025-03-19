#say lock on!

tag @s add lock_on

tag @p[team=roamer] add lock_on

damage @s 2 magic by @s

scoreboard players set @s NL_timer 40

execute as @a[tag=lock_on] at @s run summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item_display:"head",Tags:["NL","perk2","magician","vfx"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"test/junst/blood_prison"}}}
scoreboard players set @s NL_mode 1
