$execute unless data entity @s wander_target store result entity @e[type=marker,tag=NL,tag=patrol,tag=$(tag),limit=1,sort=nearest] data.mode int 1 run scoreboard players add @s NL_mode 1
