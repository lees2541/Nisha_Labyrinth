#> nl_char:char_functions/explorer/survivor/reset
# 해당 캐릭터가 생성한 맵, 엔티티, 오브젝트 관련의 변화를 리셋
say 생존가 관련 오브젝트 리셋
execute as @e[type=interaction,tag=NL,tag=occupied,tag=campfire] at @s run setblock ~ ~0.5 ~ air destroy

