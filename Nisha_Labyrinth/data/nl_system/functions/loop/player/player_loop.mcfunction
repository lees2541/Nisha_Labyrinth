#> nl_system:loop/player/player_loop
# 플레이어 루프
#@context 모든 플레이어[tag:NL]가 각각 실행
#@private
#@within nl_system:loop/loop


## 스코어보드
execute if entity @s[scores={NL_attack_cool=1}] run tag @s remove hitstun
execute if entity @s[scores={NL_attack_cool=1}] run function nl_system:modules/status_effect/base/update_storage
scoreboard players remove @s[scores={NL_attack_cool=1..}] NL_attack_cool 1


execute if entity @s[scores={NL_stun_time=1}] run function nl_system:modules/status_effect/base/clear_status {type:stun}

scoreboard players remove @s[scores={NL_stun_time=1..}] NL_stun_time 1

execute if entity @s[scores={NL_blindness_time=1}] run effect clear @s blindness
scoreboard players remove @s[scores={NL_blindness_time=1..}] NL_blindness_time 1

## 아이템이 버려질때 인벤토리 변화감지 발전과제 갱신
execute as @e[type=item,nbt=!{Item:{tag:{drop:0b}}},nbt={Item:{tag:{NL:1b}}}] if data entity @s Thrower run function nl_system:modules/dropped_item_control/dropped_item_check with entity @s

## 왼손에 아무것도 없을떄 대처
execute if entity @s[tag=NL,nbt=!{Inventory:[{Slot:-106b}]}] at @s run function nl_system:systems/item/update/offhand


execute if entity @s[tag=explorer,tag=NL] at @s run function nl_system:loop/player/explorer/explorer_loop
execute if entity @s[tag=roamer,tag=NL] at @s run function nl_system:loop/player/roamer/roamer_loop