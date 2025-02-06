#> nl_system:loop/player/player_loop
# 플레이어 루프
#@context 모든 플레이어[tag:NL]가 각각 실행
#@private
#@within nl_system:loop/loop

#> 스킬감지
advancement grant @s[scores={NL_fos_count=1..}] only nl_system:systems/actions/key_events/right_click/fos_detected impossible


#> 스코어보드

# 공격스턴 관련
execute if entity @s[scores={NL_attack_cool=1}] run tag @s remove hitstun
execute if entity @s[scores={NL_attack_cool=1}] run function nl_system:modules/status_effect/update/update_status with entity @s attributes[{id:"minecraft:luck"}]
scoreboard players remove @s[scores={NL_attack_cool=1..}] NL_attack_cool 1

# 스턴 관련
#execute if entity @s[scores={NL_stun_time=1}] run function nl_system:modules/status_effect/base/clear_status {type:stun}

scoreboard players remove @s[scores={NL_stun_time=1..}] NL_stun_time 1

execute if entity @s[scores={NL_blindness_time=1}] run effect clear @s blindness
execute unless score @s NL_blindness_time matches 100 run scoreboard players remove @s[scores={NL_blindness_time=1..}] NL_blindness_time 1
#> 정보창 변화 감지
execute unless items entity @s hotbar.8 written_book[custom_data~{NL:1b,info_book:1b}] run function nl_system:systems/item/update/info_book
#> 아이템이 버려질때 인벤토리 변화감지 발전과제 갱신
#execute as @e[type=item,nbt=!{Item:{tag:{drop:0b}}},nbt={Item:{tag:{NL:1b}}}] if data entity @s Thrower run function nl_system:modules/dropped_item_control/dropped_item_check with entity @s
execute as @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{NL:1b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:0b}}}},nbt=!{Item:{components:{"minecraft:custom_data":{drop:2b}}}}] if data entity @s Thrower unless data entity @s Owner run function nl_system:modules/dropped_item_control/dropped_item_check with entity @s
#> 왼손에 아무것도 없을떄 대처
execute unless items entity @s[tag=NL] weapon.offhand *[minecraft:custom_data~{offhand:1b}] at @s run function nl_system:systems/item/update/offhand



#> 부쉬 안에서의 행동

execute if entity @s[predicate=nl_system:status/action/sprinting,predicate=nl_system:status/location/block/in_tall_grass,predicate=nl_system:status/location/block/on_dirt] at @s run function nl_system:systems/bush/running_on_bush

#> 앉아있는 시간
scoreboard players add @s[tag=sneaking] NL_sneaking_time 1
scoreboard players set @s[team=!roamer,scores={NL_sneaking_time=15}] NL_flashlight 0
scoreboard players set @s[team=roamer,scores={NL_sneaking_time=10}] NL_flashlight 0

# 팀별 루프
execute if entity @s[tag=explorer,tag=NL] at @s run function nl_system:loop/player/explorer/explorer_loop
execute if entity @s[tag=roamer,tag=NL] at @s run function nl_system:loop/player/roamer/roamer_loop

execute at @s run function nl_system:loop/shader/shader_loop
function nl_system:loop/status_gui/status/status_storage_loop



#> 틱당 리셋
advancement revoke @s from nl_system:systems/actions/key_events/right_click/fos_detected
scoreboard players set @a NL_fos_count 0