function nl_system:modules/storage/load_to_buffer/player_info/load_player_info


advancement grant @s only nl_system:systems/actions/interactions/swamp/interact impossible
advancement grant @s only nl_system:systems/actions/interactions/allay/interact impossible

function nl_system:systems/actions/interactions/base/clear_hit with storage nl:buffer player

advancement revoke @s only nl_system:systems/actions/interactions/swamp/interact_buffer