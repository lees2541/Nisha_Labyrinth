#> nl_lobby:lobby/jobs/choose_job
# 플레이어의 캐릭터 선택 및 게임 참가 절차 실행(id 부여 등)
# @context 이 함수를 실행한 자 with {character: survivor|magician|swordsman|blind, team: explorer|roamer}
# @input
#   storage  
# @output
#   score $player NL_player_id
#       조건에 맞을 시 플레이어 id를 부여
#   storage nl:buffer 
#       player.id: int 
#           설명 
#       player.character: string 
#           설명

## 중복된 캐릭터가 있을 시 리턴

$execute if data storage nl:lobby player{character:$(character)} run return run title @s actionbar "해당 캐릭터를 선택한 플레이어가 이미 있습니다."


## 플레이어 정보 버퍼에 불러오기
data remove storage nl:buffer settings.player
execute if score @s NL_player_id matches 1.. run function nl_system:modules/storage/load_to_buffer/player_info/load_player_info
data modify storage nl:buffer settings.player.prev_character set from storage nl:buffer player.character
$data modify storage nl:buffer settings.player.character set value "$(character)"
$data modify storage nl:buffer settings.player.team set value "$(team)"


data modify storage nl:buffer settings.player.UUID set from entity @s UUID
execute store result storage nl:buffer settings.player.id int 1 run scoreboard players get @s NL_player_id

## 이미 플레이어 아이디가 등록되어 있는 경우
execute if score @s NL_player_id matches 1.. run function nl_lobby:lobby/jobs/change_job with storage nl:buffer settings.player
## 플레이어 아이디가 등록되어 있지 않은 경우
execute unless score @s NL_player_id matches 1.. run function nl_lobby:lobby/settings/players/join_game with storage nl:buffer settings.player
execute as @s[tag=NL,scores={NL_player_id=1..}] run advancement revoke @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection
execute as @s[tag=NL,scores={NL_player_id=1..}] run advancement grant @s only nl_system:modules/hotbar_holder/base/inventory_changed_detection

## 입력한 캐릭터의 시작함수 실행
$function nl_char:jobs/$(team)/$(character)/$(character) with storage nl:buffer settings.player


