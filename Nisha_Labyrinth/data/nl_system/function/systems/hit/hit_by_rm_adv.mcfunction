#> nl_system:systems/hit/hit_by_rm_adv
# 탐험가가 배회자에게 직접 맞았을 때 발동
#@private
#@within nl_system:systems/hit/hit_explorer_adv

#say 나 탐험간데 맞았덩
function nl_system:modules/storage/load_to_buffer/player_info/load_player_info
tag @s add hit
tag @s add attacked

function nl_system:systems/hit/character_hit_function_call with storage nl:buffer player