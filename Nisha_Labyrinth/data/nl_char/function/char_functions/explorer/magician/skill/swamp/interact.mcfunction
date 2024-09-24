#> nl_char:char_functions/explorer/survivor/skill/swamp/interact
# 늪과 상호작용했을때 발동
# @context 해당 늪의 interaction 엔티티 with storage nl:buffer player

execute if entity @s[type=interaction,tag=swamp,tag=!occupied] run function nl_char:char_functions/explorer/survivor/skill/swamp/campfire

execute if entity @s[type=interaction,tag=swamp,tag=berry] run function nl_char:char_functions/explorer/survivor/skill/swamp/berry
execute if entity @s[type=interaction,tag=swamp,tag=mutton] run function nl_char:char_functions/explorer/survivor/skill/swamp/mutton
