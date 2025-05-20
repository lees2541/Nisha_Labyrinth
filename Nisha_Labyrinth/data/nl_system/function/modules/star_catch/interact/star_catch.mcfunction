#> nl_system:modules/star_catch/interact/star_catch
#
#@within nl_system:systems/actions/interactions/star_catch/interact_adv
function nl_system:modules/storage/load_to_buffer/player_info/load_player_info
say 소매치기이
execute store result score #starcatch NL_temp run function nl_system:modules/star_catch/condition_check/condition_check with storage nl:buffer player
execute if score #starcatch NL_temp matches 1.. run loot give @s[tag=prisoner] loot nl_system:chests/prison/pickpocket