#> nl_char:char_functions/explorer/survivor/status/set/set_campfire
# 캠프파이어가 설치 될 떄 플레이어 변화
#@within nl_char:char_functions/explorer/survivor/skill/condition_check/interact_swamp

#tag @s add no_life_gui_update
$function nl_system:modules/status_gui/buff_icon/update/input_storage {id:$(id),tag:"skill1",character:"$(character)"}

clear @s yellow_dye[custom_data~{NL:1b,campfire:1b}] 1