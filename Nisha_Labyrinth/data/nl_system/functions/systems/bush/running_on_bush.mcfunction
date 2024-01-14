#> nl_system:systems/bush/running_on_bush
# 부쉬에서 플레이어가 달리고 있을 때 윗부쉬 몇초간 지우기
#@within nl_system:loop/player/player_loop
execute unless block ~ ~1 ~ minecraft:tall_grass as @e[type=area_effect_cloud,tag=NL_grass,tag=NL,distance=..0.5,limit=1,sort=nearest] run data merge entity @s {Age:0}
execute if block ~ ~1 ~ minecraft:tall_grass unless entity @e[type=area_effect_cloud,tag=NL_grass,tag=NL,distance=..0.5] run setblock ~ ~ ~ minecraft:tall_grass[half=lower] destroy
execute unless block ~ ~1 ~ minecraft:tall_grass unless entity @e[type=area_effect_cloud,tag=NL_grass,tag=NL,distance=..0.5] run summon area_effect_cloud ~ ~ ~ {NoGravity:1b,Radius:0.1f,Duration:100,Tags:["NL","NL_grass"]}
