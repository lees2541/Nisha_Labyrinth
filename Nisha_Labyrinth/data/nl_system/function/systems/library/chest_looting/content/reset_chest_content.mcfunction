#> nl_system:systems/library/chest_looting/content/reset_chest_content
# 제단에 올릴때 도서관 상자 재배치
#@context @e[type=marker,tag=chest,tag=library] at @s align xyz


execute as @s[tag=locked] run data merge block ~ ~ ~ {Lock:""}
tag @s[tag=occupied] remove occupied
tag @s[tag=prison_key] remove prison_key
kill @e[type=area_effect_cloud,tag=aura,tag=NL,tag=chest]
tag @s[tag=locked] remove locked



function nl_system:systems/library/chest_looting/content/refill_content





