#> nl_system:modules/status_effect/base/change_status
# 상태를 업데이트 한다
#@context 대상 {time:(int),type: stun | skill, sort: prepend | append}

$data modify storage nl:buffer status merge value {time:$(time),type:$(type),sort:$(sort)}
execute store result storage nl:buffer status.id int 1 run scoreboard players get @s NL_player_id

function nl_system:modules/status_effect/base/update_storage with storage nl:buffer status
execute if entity @s[tag=hitstun] run function nl_system:modules/status_gui/change_icon/hit
execute unless entity @s[tag=hitstun] if data storage nl:buffer status{type:"stun"} run function nl_system:modules/status_gui/change_icon/stun



