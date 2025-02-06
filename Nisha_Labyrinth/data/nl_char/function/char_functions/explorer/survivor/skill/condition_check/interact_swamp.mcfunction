#> nl_char:char_functions/explorer/survivor/skill/condition_check/interact_swamp
# 늪과 상호작용했을때 발동
# @context 해당 늪의 interaction 엔티티 with storage nl:buffer player

say 확인한당ㅇㅇㅇ
execute if entity @s[type=interaction,tag=swamp,tag=!occupied] run function nl_char:char_functions/explorer/survivor/skill/skill3/campfire

execute if entity @s[type=interaction,tag=swamp,tag=berry] run function nl_char:char_functions/explorer/survivor/skill/skill3/berry
execute if entity @s[type=interaction,tag=swamp,tag=mutton] run function nl_char:char_functions/explorer/survivor/skill/skill3/mutton
