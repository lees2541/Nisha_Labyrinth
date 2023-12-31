#> nl_system:modules/storage/load_to_buffer/player_info/search_player_info
# 실행자 정보를 버퍼에 저장
# @context 실행하는 엔티티 with nl:buffer player
# @input  
#   storage nl:buffer
#       player.id
#           매크로 파라미터
# @output 
#   storage nl:buffer 
#       player.character: string
#           실행 캐릭터 정보 
#       player.status: array
#           실행 캐릭터의 인게임 상태
# @within nl_system:modules/storage/load_to_buffer/player_info/load_player_info

$data modify storage nl:buffer player.character set from storage nl:in_game player[{id:$(id)}].character
$data modify storage nl:buffer player.status set from storage nl:in_game player[{id:$(id)}].status
$data modify storage nl:buffer player.team set from storage nl:in_game player[{id:$(id)}].team
$data modify storage nl:buffer player.UUID set from storage nl:in_game player[{id:$(id)}].UUID



