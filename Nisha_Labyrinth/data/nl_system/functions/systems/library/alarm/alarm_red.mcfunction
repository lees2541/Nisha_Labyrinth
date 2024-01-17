schedule function nishalabyrinth:system/library/alarm/alarm_on 1t replace


execute at @s at @e[type=text_display,limit=1,sort=nearest,tag=library] run summon zombie ~ ~ ~ {Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,PersistenceRequired:1b,CanPickUpLoot:0b,AngerTime:600,Tags:["NL","lib_guardian","tracer"],CustomName:'{"text":"가디언"}',Attributes:[{Name:generic.follow_range,Base:40},{Name:generic.movement_speed,Base:0.35}]}
execute as @e[type=zombie,tag=tracer,limit=1,sort=nearest] at @s run data modify entity @s AngryAt set from entity @a[sort=nearest,limit=1] UUID

execute if entity @s[team=explorer,scores={NL_open_chest=1..},advancements={nishalabyrinth:system/location/in_the_lib=true}] run tellraw @a [{"selector":"@s"},{"text":"(이)가 상자를 잘못 건드렸습니다!"}]
execute if entity @a[team=explorer,scores={NL_open_chest=1..},advancements={nishalabyrinth:system/location/in_the_lib=true}] run return 0
execute if entity @a[team=explorer,tag=lib_range] run say 누군가가 도서관에서 발각됐다!
