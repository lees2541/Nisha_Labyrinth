#say 레이트레이싱 시작
scoreboard players set @s NL_mode 1
function nl_system:systems/item/update/tool
schedule function nl_char:char_functions/roamer/hunter/skill/skill3/wolf_chasing_hand_motion_end 20t replace
execute at @s anchored eyes run function nl_char:char_functions/roamer/hunter/skill/skill3/raytrace/detecting_trapped_explorer