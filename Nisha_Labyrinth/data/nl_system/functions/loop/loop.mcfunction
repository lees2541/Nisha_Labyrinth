#> nl_system:loop/loop
# 루프마다 실행하는 함수. 아이템 흭득, 자동 statistic 갱신(대미지 등), 그리고 발전과제 이벤트 처리 후에 실행된다.
# @private


## 블럭캐기 감지
execute if entity @a[scores={NL_mined_red=1..},tag=NL] run function nl_system:systems/actions/mined/mined_redstone
execute if entity @a[scores={NL_mined_life=1..},tag=NL] run function nl_system:systems/actions/mined/mined_lifestone

execute as @a[tag=NL] at @s run function nl_system:loop/player/player_loop



execute if data storage nl:in_game status{ongoing:1} run function nl_system:loop/altar/altar_loop


#> 기타 엔티티 루프
## 부쉬 관련
execute as @e[type=area_effect_cloud,tag=NL,tag=NL_grass,nbt={Age:99}] at @s run setblock ~ ~1 ~ minecraft:tall_grass[half=upper] keep