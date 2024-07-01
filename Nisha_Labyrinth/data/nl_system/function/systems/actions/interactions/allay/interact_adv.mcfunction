say 알레이 상호작용


advancement grant @s only nl_system:systems/entity/allay/prison_key/give_prison_key impossible
execute if entity @s[advancements={nl_system:systems/entity/allay/prison_key/give_prison_key=true}] if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/entity/allay/prison_key/give_prison_key with storage nl:buffer player
