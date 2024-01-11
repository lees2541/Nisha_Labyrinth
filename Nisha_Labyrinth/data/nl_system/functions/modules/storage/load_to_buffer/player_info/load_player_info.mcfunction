#> nl_system:modules/storage/load_to_buffer/player_info/load_player_info
# 플레이어의 id정보를 이용한 매크로 함수를 보다 쉽게 만들기 위한 함수
# @context 스킬 발동조건을 달성한 플레이어
# @input 
#   score @s NL_player_id
#       플레이어가 부여받은 id
# @output
#   storage nl:buffer
#       player.id: int
#           플레이어 id 저장
#       player.character: string
# @api
#@declare function nl_system:modules/storage/load_to_buffer/player_info/load_player_info

execute store result storage nl:buffer player.id int 1 run scoreboard players get @s NL_player_id
function nl_system:modules/storage/load_to_buffer/player_info/search_player_info with storage nl:buffer player
return 1


