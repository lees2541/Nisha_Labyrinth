function nl_system:modules/storage/load_to_buffer/player_info/load_player_info

#> 제단 인터랙션 타격 시 호출
advancement grant @s only nl_system:systems/actions/interactions/altar/hit impossible


#> 알레이 타격 시 호출
advancement grant @s only nl_system:systems/actions/interactions/allay/hit impossible


#function nl_system:systems/actions/interactions/base/clear_hit with storage nl:buffer player

advancement revoke @s only nl_system:systems/actions/interactions/base/hit_buffer