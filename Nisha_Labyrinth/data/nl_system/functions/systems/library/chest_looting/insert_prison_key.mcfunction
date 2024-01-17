
tag @s add prison_key
execute at @s run loot insert ~ ~ ~ loot minecraft:chests/prison_key
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"portal",Radius:1f,Duration:60000,Color:11524980,Tags:["NL","aura","prison_key"]}