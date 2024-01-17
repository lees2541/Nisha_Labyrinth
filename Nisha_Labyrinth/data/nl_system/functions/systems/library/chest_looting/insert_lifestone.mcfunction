say 도서관에 생명석이 나타났습니다
tag @s add lifestone
execute at @s run summon area_effect_cloud ~ ~ ~ {Particle:"portal",Radius:1f,Duration:60000,Color:4547839,Tags:["NL","aura","lifestone"]}
#execute at @s run loot insert ~ ~ ~ loot minecraft:chests/lifestone