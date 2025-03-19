#> nl_system:systems/actions/interactions/swamp/interact_condition_check
# 늪이랑 상호작용 했을때의 이벤트 발생 체크
#say 췍췍
$execute if entity @s[team=roamer,tag=NL] as @e[type=interaction,limit=1,sort=nearest,nbt={interaction:{player:$(UUID)}},tag=NL,tag=swamp,tag=tainted,tag=occupied] at @s run return run function nl_system:systems/swamp/tainted_swamp/active_tainted
#$execute if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info as @e[type=interaction,limit=1,sort=nearest,nbt={interaction:{player:$(UUID)}},tag=NL,tag=swamp] at @s run return run function nl_char:char_functions/$(team)/$(character)/skill/swamp/interact with storage nl:buffer player
$execute if function nl_system:modules/storage/load_to_buffer/player_info/load_player_info as @e[type=interaction,limit=1,sort=nearest,nbt={interaction:{player:$(UUID)}},tag=NL,tag=swamp] at @s run return run function nl_char:char_functions/$(team)/$(character)/skill/condition_check/interact_swamp with storage nl:buffer player
