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

$data remove storage nl:in_game player[{id:$(id)}].status.status[{tag:$(tag)}]
$data modify storage nl:buffer status.effect.player set value $(id)
$tag @s remove $(tag)

$execute unless data storage nl:status_data effect.$(tag)[0] run return 1
$data modify storage nl:buffer status.effect merge from storage nl:status_data effect.$(tag)[0]
function nl_system:modules/status_effect/update/clear_expired_status/clear_effects with storage nl:buffer status.effect

$execute unless data storage nl:status_data effect.$(tag)[1] run return 1
$data modify storage nl:buffer status.effect merge from storage nl:status_data effect.$(tag)[1]
function nl_system:modules/status_effect/update/clear_expired_status/clear_effects with storage nl:buffer status.effect

$execute unless data storage nl:status_data effect.$(tag)[2] run return 1
$data modify storage nl:buffer status.effect merge from storage nl:status_data effect.$(tag)[2]
function nl_system:modules/status_effect/update/clear_expired_status/clear_effects with storage nl:buffer status.effect

$execute unless data storage nl:status_data effect.$(tag)[3] run return 1
$data modify storage nl:buffer status.effect merge from storage nl:status_data effect.$(tag)[3]
function nl_system:modules/status_effect/update/clear_expired_status/clear_effects with storage nl:buffer status.effect


$execute unless data storage nl:status_data effect.$(tag)[4] run return 1
$data modify storage nl:buffer status.effect merge from storage nl:status_data effect.$(tag)[4]
function nl_system:modules/status_effect/update/clear_expired_status/clear_effects with storage nl:buffer status.effect