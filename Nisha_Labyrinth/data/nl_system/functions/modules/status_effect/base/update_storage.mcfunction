#> nl_system:modules/status_effect/base/update_storage
#
#@context 바꿀려는 대상 with storage nl:buffer status
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

$execute unless data storage nl:in_game player[{id:$(id)}].status.status[{type:"$(type)"}] run data modify storage nl:in_game player[{id:$(id)}].status.status $(sort) value {type:"$(type)",time:$(time),tag:$(tag)}
$data modify storage nl:in_game player[{id:$(id)}].status.status[{tag:$(tag)}].effect set from storage nl:status_data effect.$(tag)

$data modify storage nl:buffer status.set.type set from storage nl:in_game player[{id:$(id)}].status.status[0].type
