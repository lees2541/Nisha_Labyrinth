

execute at @s at @e[type=text_display,limit=1,sort=nearest,tag=library] run summon zombie ~ ~ ~ {Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b,AngerTime:600,Tags:["NL","lib_guardian","tracer"],CustomName:'{"text":"가디언"}',attributes:[{id:generic.follow_range,base:40},{id:generic.movement_speed,base:0.35}]}
execute as @e[type=zombie,tag=tracer,limit=1,sort=nearest] at @s run data modify entity @s AngryAt set from entity @a[sort=nearest,limit=1] UUID



