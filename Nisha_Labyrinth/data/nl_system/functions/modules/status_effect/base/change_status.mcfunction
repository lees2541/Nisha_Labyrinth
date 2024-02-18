#> nl_system:modules/status_effect/base/change_status
# 상태를 업데이트 한다
#@api
#@context 대상 {time:(int),type: stun | skill, sort: prepend | append, tag: (str)}
#@within nl_system:systems/status_effects/stun/stun

$data modify storage nl:buffer status.set merge value {time:$(time),type:$(type),sort:$(sort),tag:$(tag)}
execute store result storage nl:buffer status.set.id int 1 run scoreboard players get @s NL_player_id
$data modify storage nl:buffer status.set.effect set from storage nl:status_data effect.$(tag)

#> 상태 업데이트 타이머 갱신



function nl_system:modules/status_effect/base/update_storage with storage nl:buffer status.set
execute if entity @s[tag=hitstun] run function nl_system:modules/status_gui/change_icon/hit
execute unless entity @s[tag=hitstun] if data storage nl:buffer status.set{type:"stun"} run function nl_system:modules/status_gui/change_icon/stun



