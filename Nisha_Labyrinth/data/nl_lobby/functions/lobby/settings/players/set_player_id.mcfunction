#> nl_lobby:lobby/settings/players/set_player_id
# 처음 게임에 등록하는 플레이어게 id를 부여한다
# 

## 배회자일떄 (id:5)
execute if data storage nl:buffer settings.player{team:"roamer"} store result storage nl:buffer settings.player.id int 1 run scoreboard players set @s NL_player_id 5
execute if data storage nl:buffer settings.player{team:"roamer"} run return run scoreboard objectives modify NL_status_gui displayname "\uE101"
execute if data storage nl:buffer settings.player{team:"roamer"} run attribute @s minecraft:generic.luck base set 5

## 탐험가일때 (id: 1~3)
scoreboard players add #lobby NL_player_id 1
execute store result storage nl:buffer settings.player.id int 1 run scoreboard players operation @s NL_player_id = #lobby NL_player_id

execute if score @s NL_player_id matches 1 run scoreboard players set @s NL_status_gui 1
execute if score @s NL_player_id matches 1 run scoreboard players reset player1 NL_status_gui
execute if score @s NL_player_id matches 1 run attribute @s minecraft:generic.luck base set 1

execute if score @s NL_player_id matches 2 run scoreboard players set @s NL_status_gui 4
execute if score @s NL_player_id matches 2 run scoreboard players reset player2 NL_status_gui
execute if score @s NL_player_id matches 2 run attribute @s minecraft:generic.luck base set 2

execute if score @s NL_player_id matches 3 run scoreboard players set @s NL_status_gui 7
execute if score @s NL_player_id matches 3 run scoreboard players reset player3 NL_status_gui
execute if score @s NL_player_id matches 3 run attribute @s minecraft:generic.luck base set 3

#execute if score @s NL_player_id matches 4 run scoreboard players set @s NL_status_gui 10
#execute if score @s NL_player_id matches 4 run scoreboard players reset player4 NL_status_gui