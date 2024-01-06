#> nl_system:modules/storage/scoreboard/operation/resource_count/calc_resource
# 생명석 개수의 조절과 데이터베이스 업데이트, 개수가 부족하면 0을 리턴
# @context 실행하는 엔티티 {resource: lifestone|redstone, operator: add|remove, operand:(int)} 
# @api
# @input
#   storage nl:buffer
#       operation.id
#           nl:buffer에 있는 id (storage 검색용)
#   score @s NL_$(resource)_count 
#       대상의 보유생명석을 반영하는 스코어보드 
# @output 
#   storage nl:in_game 
#       player.status.resource.$(resource): int 
#            해당 플레이어의 생명석 개수
#declare tag/function nl_system:calc_resource 형식: {resource: $(resource)|redstone, operator:add|remove, operand: (int)}

$execute store result score #temp NL_$(resource)_count run scoreboard players get @s NL_$(resource)_count
$execute if score @s NL_$(resource)_count matches ..-1 run return -1

execute store result storage nl:buffer operation.id int 1 run scoreboard players get @s NL_player_id
$data modify storage nl:buffer operation.operator set value "$(operator)"
$data modify storage nl:buffer operation.operand set value "$(operand)"
execute unless data storage nl:buffer operation{operator:"remove"} unless data storage nl:buffer operation{operator:"add"} run data remove storage nl:buffer operation
execute unless data storage nl:buffer operation{operator:"remove"} unless data storage nl:buffer operation{operator:"add"} run return -1


$scoreboard players $(operator) #temp NL_$(resource)_count $(operand)
$execute if score #temp NL_$(resource)_count matches ..-1 run data remove storage nl:buffer operation
$execute if score #temp NL_$(resource)_count matches ..-1 run return 0
$scoreboard players operation #temp NL_$(resource)_count >< @s NL_$(resource)_count

#$function nl_system:modules/storage/scoreboard/operation/$(resource)_count/$(operator)_$(resource)_count with storage nl:buffer operation

$function nl_system:systems/item/update/$(resource)





