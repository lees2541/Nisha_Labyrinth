#> nl_lobby:clear/clear_players
#
#@context 실행하는 플레이어 
#@within
#   nl_lobby:lobby/game_reset
#   nl_lobby:lobby/game_start
say clear_players
execute as @a run function nl_char:status/reset_attribute
function nl_lobby:clear/scoreboard/clear_scoreboard
effect clear @a



#say clear_players1

execute if data storage nl:lobby settings.player[0] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[0].character

#say clear_players1_001
execute if data storage nl:lobby settings.player[0] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[0].team
#say clear_players1_002
execute if data storage nl:lobby settings.player[0] run data modify storage nl:buffer player.id set from storage nl:lobby settings.player[0].id
#say clear_players1_003
#say clear_players1_01
#say ho
execute if data storage nl:lobby settings.player[0] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player
#say clear_players1_02
execute if data storage nl:lobby settings.player[1] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[1].character
execute if data storage nl:lobby settings.player[1] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[1].team
execute if data storage nl:lobby settings.player[1] run data modify storage nl:buffer player.id set from storage nl:lobby settings.player[1].id
execute if data storage nl:lobby settings.player[1] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[2] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[2].character
execute if data storage nl:lobby settings.player[2] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[2].team
execute if data storage nl:lobby settings.player[2] run data modify storage nl:buffer player.id set from storage nl:lobby settings.player[2].id
execute if data storage nl:lobby settings.player[2] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[3] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[3].character
execute if data storage nl:lobby settings.player[3] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[3].team
execute if data storage nl:lobby settings.player[3] run data modify storage nl:buffer player.id set from storage nl:lobby settings.player[3].id
execute if data storage nl:lobby settings.player[3] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player

execute if data storage nl:lobby settings.player[4] run data modify storage nl:buffer player.character set from storage nl:lobby settings.player[4].character
execute if data storage nl:lobby settings.player[4] run data modify storage nl:buffer player.team set from storage nl:lobby settings.player[4].team
execute if data storage nl:lobby settings.player[4] run data modify storage nl:buffer player.id set from storage nl:lobby settings.player[4].id
execute if data storage nl:lobby settings.player[4] run function nl_lobby:clear/indiv_reset_character with storage nl:buffer player


xp set @a 0 levels
xp set @a 0 points
#say clear_players2
#execute if data storage nl:in_game status{ongoing:2} run return 0

return 1



