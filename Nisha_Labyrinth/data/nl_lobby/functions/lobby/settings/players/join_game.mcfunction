#> nl_lobby:lobby/settings/players/join_game
# 플레이어 id가 없는 사람에게 id를 부여한 후 정보를 데이터베이스에 저장한다
# @output
#   nl:in_game
#       player : [{캐릭터 및 아이디 등 기본 정보}]
#       records.player : [{개인 인게임 기록용}]
#@private
#@within nl_lobby:lobby/jobs/choose_job

function nl_lobby:lobby/settings/players/set_player_id with storage nl:buffer settings.player
data modify storage nl:in_game player append from storage nl:buffer settings.player
data modify storage nl:lobby settings.player append from storage nl:buffer settings.player
data modify storage nl:inven player append from storage nl:buffer settings.player
data remove storage nl:inven player[].UUID
data remove storage nl:inven player[].prev_character
data modify storage nl:in_game records.player append from storage nl:buffer settings.player
data remove storage nl:in_game records.player[].UUID
data remove storage nl:in_game records.player[].prev_character

## 검색법
#data get storage nl:lobby settings.player[{id:1}].character

