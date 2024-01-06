
execute if entity @a[scores={NL_mined_life=1..},tag=NL,tag=explorer] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/mined/ex_mined_lifestone with storage nl:buffer player
execute if entity @a[scores={NL_mined_life=1..},tag=NL,tag=roamer] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/mined/ex_mined_lifestone with storage nl:buffer player
say 아무나 생명석 캤덩

scoreboard players reset @a[tag=NL] NL_mined_life