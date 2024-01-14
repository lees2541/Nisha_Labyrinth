#> nl_system:modules/status_effect/base/clear_status
# 사라진 상태이상을 storage에서 지우기
#@context 대상 {type: stun}


execute store result storage nl:buffer status.id int 1 run scoreboard players get @s NL_player_id
$data modify storage nl:buffer status.type set value "$(type)"
function nl_system:modules/status_effect/base/delete_status with storage nl:buffer status

#$say $(type) 없애기

function nl_system:modules/status_effect/update/update_status with entity @s Attributes[{Name:"minecraft:generic.luck"}]