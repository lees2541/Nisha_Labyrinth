execute as @a[tag=NL,team=explorer,scores={NL_mined_life=1..}] run function nl_lobby:clear/tags/clear_debuff
execute as @a[scores={NL_mined_life=1..},tag=NL,tag=explorer] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/mined/lifestone/ex_mined_lifestone with storage nl:buffer player
execute as @a[scores={NL_mined_life=1..},tag=NL,tag=roamer] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/mined/lifestone/rm_mined_lifestone with storage nl:buffer player
say 아무나 생명석 캤덩
playsound minecraft:conc_alarm ambient @a ~ ~ ~ 1 1 1

scoreboard players reset @a[tag=NL] NL_mined_life