#> nl_system:modules/status_effect/base/change_status
# 상태를 업데이트 한다
#@api
#@context 대상 {time:(int),type: stun | skill, sort: prepend | append, tag: (str)}
#@within nl_system:systems/status_effects/stun/stun

$data modify storage nl:buffer status merge value {time:$(time),type:$(type),sort:$(sort),tag:$(str)}
execute store result storage nl:buffer status.id int 1 run scoreboard players get @s NL_player_id


#> 상태 업데이트 타이머 갱신
$execute if score @s NL_status_update matches $(time).. run scoreboard players set @s NL_status_update $(time)



function nl_system:modules/status_effect/base/update_storage with storage nl:buffer status
execute if entity @s[tag=hitstun] run function nl_system:modules/status_gui/change_icon/hit
execute unless entity @s[tag=hitstun] if data storage nl:buffer status{type:"stun"} run function nl_system:modules/status_gui/change_icon/stun



