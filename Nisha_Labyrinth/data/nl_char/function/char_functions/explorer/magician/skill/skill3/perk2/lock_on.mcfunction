#say lock on!

tag @s add lock_on
execute at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["NL","magician_marker","lock_on"]}
tag @p[team=roamer] add lock_on
execute as @p[team=roamer,tag=lock_on] at @s run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Invisible:1b,NoBasePlate:1b,Tags:["NL","roamer_marker","lock_on"]}
damage @s 2 magic by @s

scoreboard players set @s NL_timer 40

execute if function #nl_system:load_player_info run function nl_char:char_functions/explorer/magician/status/set/set_rooting with storage nl:buffer player

execute as @e[type=armor_stand,tag=lock_on] at @s run summon item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]},item_display:"head",Tags:["NL","perk2","magician","vfx"],item:{id:"minecraft:emerald",count:1,components:{"minecraft:item_model":"explorer/magician/blood_prison"}}}
scoreboard players set @s NL_mode 1
