## 플레이어 정보 버퍼에 불러오기
data remove storage nl:buffer settings.player

$data modify storage nl:buffer settings.player.character set value "$(character)"
data modify storage nl:buffer settings.player.UUID set from entity @s UUID
execute store result storage nl:buffer settings.player.id int 1 run scoreboard players get @s NL_player_id

## 이미 플레이어 아이디가 등록되어 있는 경우
execute if score @s NL_player_id matches 1.. run function nl_lobby:lobby/jobs/change_job with storage nl:buffer settings.player
## 플레이어 아이디가 등록되어 있지 않은 경우
execute unless score @s NL_player_id matches 1.. run function nl_lobby:lobby/settings/players/join_game with storage nl:buffer settings.player


## 입력한 캐릭터의 시작함수 실행
$function nl_char:jobs/explorer/$(character)/$(character) with storage nl:buffer settings.player
