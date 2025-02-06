say hi
execute on target unless items entity @s hotbar.* yellow_dye[custom_data~{NL:1b,campfire:1b}] run return 0
execute on target unless items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{NL:1b,survivor:1b}] run return 0
#execute on target unless score @s NL_lifestone_count matches 1.. run return 0
#execute on target run function nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource {resource:lifestone,operator:remove,operand:1}
tag @s add occupied
tag @s add campfire
execute on target if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_char:char_functions/explorer/survivor/status/set/set_campfire with storage nl:buffer player
setblock ~ ~ ~ soul_campfire[signal_fire=false,waterlogged=false]{CookingTotalTimes:[I;0,100000,100000,100000],Items:[{Slot:1b,id:"minecraft:bowl",count:1b},{Slot:2b,id:"minecraft:bowl",count:1b},{Slot:3b,id:"minecraft:bowl",count:1b}]}
## ui 바꾸기

#$execute on target run function nl_system:modules/status_gui/lifestone_icon/update/input_storage {id:$(id),tag:"skill1",character:"$(character)"}



return 1