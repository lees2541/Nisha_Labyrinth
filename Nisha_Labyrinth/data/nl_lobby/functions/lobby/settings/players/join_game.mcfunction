

function nl_lobby:lobby/settings/players/set_player_id with storage nl:buffer settings.player
data modify storage nl:in_game player append from storage nl:buffer settings.player
data modify storage nl:lobby settings.player append from storage nl:buffer settings.player
data modify storage nl:in_game records.player append from storage nl:buffer settings.player
data remove storage nl:in_game records.player[].UUID
data remove storage nl:in_game records.player[].prev_character

## 검색법
#data get storage nl:lobby settings.player[{id:1}].character

