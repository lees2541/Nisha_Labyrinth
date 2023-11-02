#> nl_system:modules/storage/scoreboard/operation/lifestone_count/get_lifestone
# 설명 
# @context 실행하는 엔티티 
# @input  
#   score @s
#       NL_player_id
#           설명
#       NL_lifestone_count
#           설명
# @output 
#   storage nl:buffer 
#       operation.id: int 
#           플레이어 id, 모든 함수완료되면 리셋
#       operation.result: int
#           가진 생명석 개수, 모든함수 완료되면 리셋
# @handles nl_system:modules/storage/scoreboard/operation/lifestone_count/update_lifestone


execute store result storage nl:buffer operation.id int 1 run scoreboard players get @s NL_player_id
execute store result storage nl:buffer operation.result int 1 run scoreboard players get @s NL_lifestone_count
function nl_system:modules/storage/scoreboard/operation/lifestone_count/update_lifestone with storage nl:buffer operation