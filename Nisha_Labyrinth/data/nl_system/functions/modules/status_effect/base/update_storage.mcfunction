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


$execute unless data storage nl:in_game player[{id:$(id)}].status.effects[{type:"$(type)"}] run data modify storage nl:in_game player[{id:$(id)}].status.effects $(sort) value {type:"$(type)",time:$(time)}

$data modify storage nl:buffer status.type set from storage nl:in_game player[{id:$(id)}].status.effects[0].type
