
scoreboard players add #lobby NL_player_id 1
execute store result storage nl:buffer settings.player.id int 1 run scoreboard players operation @s NL_player_id = #lobby NL_player_id

