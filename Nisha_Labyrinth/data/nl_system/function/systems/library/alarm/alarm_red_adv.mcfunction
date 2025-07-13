

execute at @s at @e[type=text_display,limit=1,sort=nearest,tag=library] run summon vindicator ~ ~ ~ {Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b,Tags:["NL","lib_guardian","tracer"],CustomName:'"변명자"',attributes:[{id:"minecraft:follow_range",base:40},{id:"minecraft:movement_speed",base:0.35}]}
execute as @e[type=vindicator,tag=tracer,limit=1,sort=nearest] at @s run data modify entity @s AngryAt set from entity @a[sort=nearest,limit=1,tag=NL] UUID



