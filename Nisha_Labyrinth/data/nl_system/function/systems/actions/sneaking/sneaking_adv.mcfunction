advancement revoke @s only nl_system:systems/actions/sneaking/stop_sneaking

execute if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/sneaking/start_sneaking_characters with storage nl:buffer player
scoreboard players set @s NL_sneaking_time 0
tag @s add sneaking




