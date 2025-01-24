#> nl_system:systems/actions/key_events/right_click/fos_detected

function nl_system:modules/storage/load_to_buffer/player_info/load_player_info

execute if entity @s[predicate=nl_system:player/skill/skill1_ready] run function nl_system:systems/actions/key_events/right_click/skill1_trigger with storage nl:buffer player

