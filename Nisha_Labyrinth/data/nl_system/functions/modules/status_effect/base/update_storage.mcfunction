#> nl_system:modules/status_effect/base/update_storage
#
#@context 바꿀려는 대상 with storage nl:buffer status.set
#@input
#   storage nl:buffer
#       status.id
#           플레이어 id
#       status.type
#           상태이상 타입
#       status.time
#           상태이상 시간
#       status.sort
#           우선 표기 순위
#       status.tag
#           상태이상 이름
#@within nl_system:modules/status_effect/base/change_status

$execute unless data storage nl:in_game player[{id:$(id)}].status.status[{tag:"$(tag)"}] if score @s NL_status_update matches 1.. if score @s NL_status_update matches $(time).. run scoreboard players set @s NL_status_update $(time)
$execute if score @s NL_status_update matches 0 run scoreboard players set @s NL_status_update $(time)

## 이미 동일한 상태이상이 있을 때
$execute if data storage nl:in_game player[{id:$(id)}].status.status[{tag:"$(tag)"}] run function nl_system:modules/status_effect/base/time_comparison with storage nl:buffer status.set

## 새 상태이상 새로 갱신
$execute unless data storage nl:in_game player[{id:$(id)}].status.status[{tag:"$(tag)"}] run data modify storage nl:in_game player[{id:$(id)}].status.status $(sort) value {type:"$(type)",time:$(time),tag:$(tag)}
$data modify storage nl:in_game player[{id:$(id)}].status.status[{tag:$(tag)}].effect set from storage nl:status_data effect.$(tag)

$data modify storage nl:buffer status.set.type set from storage nl:in_game player[{id:$(id)}].status.status[0].type
