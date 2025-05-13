execute as @a[scores={NL_mined_mana=1..},tag=NL,tag=explorer] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/mined/ex_mined_manastone with storage nl:buffer player

say 아무나 마석 캤덩

scoreboard players reset @a[tag=NL] NL_mined_mana