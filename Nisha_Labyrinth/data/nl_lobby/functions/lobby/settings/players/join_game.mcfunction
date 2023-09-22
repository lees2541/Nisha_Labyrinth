data modify storage nl:buffer settings.player.UUID set from entity @s UUID
execute unless score @s NL_player_id matches 1.. run function nl_lobby:lobby/settings/players/set_player_id with storage nl:buffer settings.player

data modify storage nl:lobby settings.player append from storage nl:buffer settings.player

## 검색법
#data get storage nl:lobby settings.player[{id:1}].character

