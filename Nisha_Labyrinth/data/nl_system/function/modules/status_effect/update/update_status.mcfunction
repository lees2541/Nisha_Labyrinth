#> nl_system:modules/status_effect/update/update_status
# 스토리지 nl:in_game player.status.effects 안의 데이터에 따라 gui_status의 시각정보를 업데이트 한다.
#@api
#@context 대상 with entity @s Attributes[{Name:"minecraft:generic.luck"}]
#@input 
#   $(Base)는 해당 플레이어의 id이다



execute if entity @s[team=prisoner] run return fail

## 상태이상 스토리지 업데이트
$data modify storage nl:buffer status.array[] set from storage nl:in_game player[{id:$(Base)}].status.status[]
$function nl_system:modules/status_effect/update/update_storage {Base:$(Base)}


## GUI 업데이트
execute if entity @s[tag=hitstun] run return run function nl_system:modules/status_gui/profile_icon/case/hit

$execute unless data storage nl:in_game player[{id:$(Base)}].status.status[0] run return run function nl_system:modules/status_gui/profile_icon/case/default

$data modify storage nl:buffer status.set.type set from storage nl:in_game player[{id:$(Base)}].status.status[0].type

$execute if data storage nl:in_game player[{id:$(Base)}].status.status[0] run function nl_system:modules/status_effect/update/call_change_icon with storage nl:buffer status

#data remove storage nl:buffer status
#execute unless data storage nl:in_game player