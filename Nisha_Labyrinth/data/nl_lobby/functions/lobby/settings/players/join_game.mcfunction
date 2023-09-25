

function nl_lobby:lobby/settings/players/set_player_id with storage nl:buffer settings.player

data modify storage nl:lobby settings.player append from storage nl:buffer settings.player

## 검색법
#data get storage nl:lobby settings.player[{id:1}].character

