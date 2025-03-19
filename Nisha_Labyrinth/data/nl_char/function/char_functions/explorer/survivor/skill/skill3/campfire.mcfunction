execute on target unless items entity @s hotbar.* yellow_dye[custom_data~{NL:1b,campfire:1b}] run say hisdhisdh
execute on target unless items entity @s hotbar.* yellow_dye[custom_data~{NL:1b,campfire:1b}] run return 0
execute on target unless items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{NL:1b,tool:1b}] run return 0
#execute on target unless score @s NL_lifestone_count matches 1.. run return 0
#execute on target run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:lifestone,operator:remove,operand:1}
say 캠프파이어 설치!
tag @s add occupied
tag @s add campfire
execute on target if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_char:char_functions/explorer/survivor/status/set/set_campfire with storage nl:buffer player
execute at @s run setblock ~ ~ ~ campfire[signal_fire=false,waterlogged=false]{CookingTotalTimes:[I;10,10,10,10]}
## ui 바꾸기

#$execute on target run function nl_system:modules/status_gui/lifestone_icon/update/input_storage {id:$(id),tag:"skill1",character:"$(character)"}



return 1