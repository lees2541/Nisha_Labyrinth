execute as @e[type=marker,tag=chests,tag=library,tag=locked] at @s run data merge block ~ ~ ~ {Lock:""}
execute as @e[type=marker,tag=NL,tag=chests,tag=library,tag=occupied] run tag @s remove occupied
execute as @e[type=marker,tag=NL,tag=chests,tag=library] run tag @s remove prison_key
kill @e[type=area_effect_cloud,tag=prison_key,tag=aura,tag=NL,tag=chests]
execute as @e[type=marker,tag=NL,tag=chests,tag=library] run tag @s remove locked
execute as @e[type=marker,tag=NL,tag=chests,tag=library] run function nishalabyrinth:system/library/chest_looting/insert_piece_items