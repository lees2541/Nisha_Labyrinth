#> nl_vfx:map/cave/trigger/imprison
# 죽었을 때 연출 트리거
# 주어진 좌표 엔티티: @e[type=marker,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx] 죽은 탐험가의 위치좌표 엔티티
# 마지막엔 꼭 처음에 줬던 위치좌표 엔티티들 지울 것, 모든 엔티티는 태그에 NL, nl_vfx를 붙일 것
#@public

#declare entity @e[type=marker,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] 감옥갈떄좌표 엔티티

execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run summon vindicator ~2 ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["NL","nl_vfx","vind"],HandItems:[{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:custom_model_data":80001}},{}]}
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run summon vindicator ~-2 ~ ~ {Silent:1b,Invulnerable:1b,NoAI:1b,Tags:["NL","nl_vfx","vind"],HandItems:[{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:custom_model_data":80001}},{}]}
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run summon item_display ~1 ~ ~1 {Silent:1b,Tags:["nl_vfx","NL","vind"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:custom_model_data":80000}}}
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run summon item_display ~-1 ~ ~-1 {Silent:1b,Tags:["nl_vfx","NL","vind"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:custom_model_data":80000}}}
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run summon item_display ~ ~ ~ {Silent:1b,Tags:["nl_vfx","NL","vind","imp0"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:diamond_axe",count:1b,components:{"minecraft:custom_model_data":80001}}}
execute as @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,tag=imp_arm,limit=1] at @s run playsound minecraft:imprison_choir master @a
execute as @e[tag=vind] at @s run tp @s ~ ~ ~ facing entity @e[type=armor_stand,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,limit=1,sort=nearest]

schedule function nl_vfx:map/cave/prison/imprison/imprison1 20t
schedule function nl_vfx:map/cave/prison/imprison/imprison2 40t
schedule function nl_vfx:map/cave/prison/imprison/imprison3 60t
schedule function nl_vfx:map/cave/prison/imprison/imprison_end 80t


#> 대상을 바라보는 예시
## 바라보는 주체가 다른 대상의 눈 위치를 바라보며 0.1칸 전진한다, run 이전의 facing은 시점좌표를 설정하는거고, run 후의 facing은 실제로 바라보는 행동을 취한다
#execute as @e[tag=바라보는주체] at @s facing entity @a[tag=바라볼대상,limit=1] eyes positioned ^ ^ ^0.1 run tp @s ~ ~ ~ facing entity @a[tag=바라볼대상,limit=1] eyes
#execute as @e[type=allay] at @s run tp @s ~ ~ ~ facing entity @a[tag=바라볼 대상,limit=1]
#summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Tags:["coordinate","NL","imprison","nl_vfx","imp_arm"]} (좌표 아머스탠드 소환)
#summon armor_stand ~ ~ ~ {Silent:1b,Invulnerable:1b,Invisible:1b,Tags:["nl_vfx","NL","coordinate","imprison","imp_arm"]} (투명 아머스탠드)