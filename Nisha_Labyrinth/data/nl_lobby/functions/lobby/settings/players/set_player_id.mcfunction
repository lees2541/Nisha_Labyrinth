
scoreboard players add #lobby NL_player_id 1
execute store result storage nl:buffer settings.player.id int 1 run scoreboard players operation @s NL_player_id = #lobby NL_player_id

execute if score @s NL_player_id matches 1 run scoreboard players set @s NL_status_gui 1
execute if score @s NL_player_id matches 1 run scoreboard players reset player1 NL_status_gui

execute if score @s NL_player_id matches 2 run scoreboard players set @s NL_status_gui 4
execute if score @s NL_player_id matches 2 run scoreboard players reset player2 NL_status_gui

execute if score @s NL_player_id matches 3 run scoreboard players set @s NL_status_gui 7
execute if score @s NL_player_id matches 3 run scoreboard players reset player3 NL_status_gui

execute if score @s NL_player_id matches 4 run scoreboard players set @s NL_status_gui 10
execute if score @s NL_player_id matches 4 run scoreboard players reset player4 NL_status_gui