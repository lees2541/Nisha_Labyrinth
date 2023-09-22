data modify storage nl:buffer settings.player.character set value 2

execute unless score @s NL_player_id matches 1.. run function nl_lobby:lobby/settings/players/join_game

