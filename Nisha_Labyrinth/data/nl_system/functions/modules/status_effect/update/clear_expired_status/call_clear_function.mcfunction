#> nl_system:modules/status_effect/update/clear_expired_status/call_clear_function
#
#@context 대상 with storage nl:buffer status.subarray[]
#
#@input
#   storage nl:buffer
#       status.subarray
#           id  플레이어 id
#           type
#           tag
#@within nl_system:modules/status_effect/update/clear_expired_status/clear_expired_status

$data remove storage nl:in_game player[{id:$(id)}].status.status{tag:$(tag)}


data modify storage nl:buffer status.effect set from storage nl:status_data effect.$(tag)[0]
$data modify storage nl:buffer status.effect.player set value $(id)
function nl_system:modules/status_effect/update/clear_expired_status/clear_effects with storage nl:buffer status.effect





