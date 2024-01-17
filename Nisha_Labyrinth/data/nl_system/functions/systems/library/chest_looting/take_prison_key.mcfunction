#loot give @s[team=explorer] loot minecraft:chests/prison_key
tag @e[type=marker,tag=prison_key,limit=1,sort=nearest,tag=chests,tag=library] remove prison_key
kill @e[type=area_effect_cloud,tag=prison_key,tag=aura,limit=1,distance=..1.5]
