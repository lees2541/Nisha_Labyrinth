
## 상태이상 관련
scoreboard players set @a NL_status_update 0
scoreboard players set @a NL_status_update_count 0

scoreboard players set @a NL_stun_time 0
scoreboard players set @a NL_blindness_time 0
##스킬 관련
scoreboard players set @a NL_skill_cool1 -1
scoreboard players set @a NL_skill_cool2 -1
scoreboard players set @a NL_skill_cool3 -1

scoreboard players reset NL_damage_speed
scoreboard players set @a NL_charging_gauge 1000
## 행동 상태 관련
scoreboard players set @a NL_sneaking_time 0

## 게임 설정 관련
execute if data storage nl:in_game status{ongoing:2} run return 1

scoreboard objectives remove NL_player_id
scoreboard objectives add NL_player_id dummy
scoreboard players set #lobby NL_player_id 0
scoreboard players set #game NL_rm_enterance 81
scoreboard objectives remove NL_mined_red
scoreboard objectives add NL_mined_red minecraft.mined:minecraft.redstone_ore
scoreboard objectives remove NL_mined_life
scoreboard objectives add NL_mined_life minecraft.mined:minecraft.bone_block
scoreboard objectives remove NL_mined_mana
scoreboard objectives add NL_mined_mana minecraft.mined:minecraft.lapis_block
scoreboard players reset @a NL_redstone_count
scoreboard players reset @a NL_lifestone_count
## 커스텀모델 데이터 관련
scoreboard players reset @a NL_cmd_tool
scoreboard players reset @a NL_cmd_tool2
scoreboard players reset @a NL_cmd_book

## 도서관 관련 

scoreboard players set #library NL_lib_alarm_gauge 0
scoreboard players set @a NL_lib_alarm_gauge 0
scoreboard players set #library_key NL_count 0

## 기타
scoreboard players set @a NL_alarm_timer 0
scoreboard players reset @a NL_mode
scoreboard players set @a NL_death 0
scoreboard players set @a NL_perk 0



scoreboard players set @a E_efficiency 0



function nl_lobby:clear/scoreboard/clear_status_gui