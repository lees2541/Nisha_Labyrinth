#> nl_system:modules/storage/scoreboard/operation/lifestone_count/update_lifestone
# 설명 
# @context 플레이어 with storage nl:buffer operation
# @input  
#   storage nl:buffer
#       operation.id : int
#           플레이어 id
#       operation.result : int
#           계산 후 생명석의 값
#   score @s NL_lifestone_count
#       실행자의 계산 후 생명석 보유 수
# @output 
#   storage nl:in_game
#       player.status.resource.lifestone : int 
#           생명석 보유 수를 nl:in_game storage에 저장
# @within nl_system:modules/storage/scoreboard/operation/lifestone_count/calc_lifestone

$execute store result storage nl:in_game player[{id:$(id)}].status.resource.lifestone int 1 run scoreboard players get @s NL_lifestone_count

$execute if score @s NL_lifestone_count matches 0..9 run data modify storage nl:buffer operation.result set value 10000$(result)
execute if score @s NL_lifestone_count matches 10..99 run data modify storage nl:buffer operation.result set value 100010


