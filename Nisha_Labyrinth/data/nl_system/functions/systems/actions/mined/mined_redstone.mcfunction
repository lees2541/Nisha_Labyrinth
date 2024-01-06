
execute as @a[scores={NL_mined_red=1..},tag=NL] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/mined/ex_mined_redstone with storage nl:buffer player

say 아무나 레드스톤 캤덩

scoreboard players reset @a[tag=NL] NL_mined_red