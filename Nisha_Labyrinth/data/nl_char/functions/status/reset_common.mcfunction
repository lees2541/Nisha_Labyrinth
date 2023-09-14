
## 다른 캐릭터로 옮길 수 있도록 초기화를 진행한다.##
#####################################################


## 캐릭터 별 초기화 함수호출


######################################################

## 공통 스코어보드 초기화
scoreboard players reset @s NL_chance

# 스킬 쿨 클리어
scoreboard players set @s NL_cool1 1
scoreboard players set @s NL_cool2 1
scoreboard players set @s NL_cool3 1


# 기타 스코어보드 클리어
scoreboard players reset @s NL_being_lighted
scoreboard players set @s NL_fear 0
scoreboard players set @s NL_music 0
scoreboard players set @s flashlight 0
scoreboard players set @s NL_stack 0
scoreboard players set @s NL_temp 0

scoreboard players set @a NL_debuff_stat 0
scoreboard players set @a NL_buff_stat 0

######################################################


## 공통 초기화 
# 여러 태그 초기화
clear @s
effect clear
tag @s remove skill_ready
tag @s remove NL

attribute @s generic.attack_damage base set 1
attribute @s generic.attack_speed base set 4

scoreboard players reset @s NL_chance
######################################################


## OVERLAY GUI 클리어
execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
