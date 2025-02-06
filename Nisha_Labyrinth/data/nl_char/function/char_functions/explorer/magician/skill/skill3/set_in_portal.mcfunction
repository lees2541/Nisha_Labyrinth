tag @s add occupied
tag @s add in_portal
#execute on target if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_char:char_functions/explorer/survivor/status/set/set_campfire with storage nl:buffer player
setblock ~ ~ ~ soul_campfire[signal_fire=false,waterlogged=false]{CookingTotalTimes:[I;0,100000,100000,100000],Items:[{Slot:1b,id:"minecraft:bowl",count:1b},{Slot:2b,id:"minecraft:bowl",count:1b},{Slot:3b,id:"minecraft:bowl",count:1b}]}
## ui 바꾸기

#$execute on target run function nl_system:modules/status_gui/lifestone_icon/update/input_storage {id:$(id),tag:"skill1",character:"$(character)"}



return 1