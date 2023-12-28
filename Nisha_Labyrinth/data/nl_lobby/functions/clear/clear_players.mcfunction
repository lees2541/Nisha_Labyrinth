#> nl_lobby:clear/clear_players

execute if data storage nl:lobby settings.player[0] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[0].character
execute if data storage nl:lobby settings.player[0] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[0].team
execute if data storage nl:lobby settings.player[0] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[1] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[1].character
execute if data storage nl:lobby settings.player[1] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[1].team
execute if data storage nl:lobby settings.player[1] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[2] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[2].character
execute if data storage nl:lobby settings.player[2] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[2].team
execute if data storage nl:lobby settings.player[2] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[3] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[3].character
execute if data storage nl:lobby settings.player[3] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[3].team
execute if data storage nl:lobby settings.player[3] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[4] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[4].character
execute if data storage nl:lobby settings.player[4] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[4].team
execute if data storage nl:lobby settings.player[4] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:in_game status{ongoing:2} run return 0



## 공통
execute as @s run function nl_char:status/reset_common
tag @s remove NL
tag @s remove explorer
tag @s remove roamer
clear @s