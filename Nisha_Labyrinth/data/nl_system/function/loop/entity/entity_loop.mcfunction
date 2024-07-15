#> nl_system:loop/entity/entity_loop
# 기타 엔티티들의 루프
#@within nl_system:loop/loop
#@handles 
#   nl_system:loop/entity/allay/allay_loop

#> 지역 마커 루프
execute as @e[type=marker,tag=area,tag=NL] at @s run function nl_system:loop/entity/area_marker/area_marker_loop with entity @s data

#> 알레이 루프
execute as @e[type=allay,tag=NL,tag=allay] at @s run function nl_system:loop/entity/allay/allay_loop


## 부쉬 관련
execute as @e[type=area_effect_cloud,tag=NL,tag=NL_grass,nbt={Age:99}] at @s run setblock ~ ~1 ~ minecraft:tall_grass[half=upper] keep

## 버릴 수 없는 드랍아이템 



## 상호작용 엔티티의 interaction nbt 삭제
execute as @e[type=interaction,tag=NL] run data remove entity @s attack
execute as @e[type=interaction,tag=NL] run data remove entity @s interaction