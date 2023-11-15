#> nl_system:modules/storage/scoreboard/operation/resource_count/get_resource
# 설명 
# @context 실행하는 엔티티 {resource: lifestone|redstone}
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
# @handles nl_system:modules/storage/scoreboard/operation/resource_count/update_resource


execute store result storage nl:buffer operation.id int 1 run scoreboard players get @s NL_player_id
$execute store result storage nl:buffer operation.result int 1 run scoreboard players get @s NL_$(resource)_count
$data modify storage nl:buffer operation.item set value "$(resource)"
function nl_system:modules/storage/scoreboard/operation/resource_count/update_resource with storage nl:buffer operation