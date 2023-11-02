#> nl_system:modules/storage/scoreboard/operation/lifestone_count/calc_lifestone
# 생명석 개수의 조절과 데이터베이스 업데이트
# @context 실행하는 엔티티 {operator:add/remove,operand:(int)} 
# @api
# @input
#   storage nl:buffer
#       operation.id
#           nl:buffer에 있는 id (storage 검색용)
#   score @s NL_lifestone_count 
#       대상의 보유생명석을 반영하는 스코어보드 
# @output 
#   storage nl:in_game 
#       player.status.resource.lifestone: int 
#            해당 플레이어의 생명석 개수
#       player.character: string 
#           설명
execute store result score #temp NL_lifestone_count run scoreboard players get @s NL_lifestone_count
execute if score @s NL_lifestone_count matches ..-1 run return 0

execute store result storage nl:buffer operation.id int 1 run scoreboard players get @s NL_player_id
$data modify storage nl:buffer operation.operator set value "$(operator)"
$data modify storage nl:buffer operation.operand set value "$(operand)"
execute unless data storage nl:buffer operation{operator:"remove"} unless data storage nl:buffer operation{operator:"add"} run data remove storage nl:buffer operation
execute unless data storage nl:buffer operation{operator:"remove"} unless data storage nl:buffer operation{operator:"add"} run return 0


$scoreboard players $(operator) #temp NL_lifestone_count $(operand)
execute if score #temp NL_lifestone_count matches ..-1 run data remove storage nl:buffer operation
execute if score #temp NL_lifestone_count matches ..-1 run return -1
scoreboard players operation #temp NL_lifestone_count >< @s NL_lifestone_count

#$function nl_system:modules/storage/scoreboard/operation/lifestone_count/$(operator)_lifestone_count with storage nl:buffer operation

function nl_system:systems/item/update/lifestone





