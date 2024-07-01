function nl_system:modules/storage/load_to_buffer/player_info/load_player_info


advancement grant @s only nl_system:systems/actions/interactions/swamp/interact impossible
advancement grant @s only nl_system:systems/actions/interactions/allay/interact impossible
advancement grant @s only nl_system:systems/actions/interactions/star_catch/interact impossible
advancement grant @s only nl_system:systems/actions/interactions/vine/used_bone_meal impossible
advancement grant @s only nl_system:systems/actions/interactions/shop/interact impossible

advancement revoke @s only nl_system:systems/actions/interactions/base/interact_buffer

#execute if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info run function nl_system:systems/actions/interactions/base/clear_interact with storage nl:buffer player