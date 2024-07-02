#> nl_system:modules/status_effect/update/update_storage
# 플레이어의 스토리지 nl:in_game player.status.status 안의 타이머를 업데이트 한다
#@context 해당 플레이어 {base:(id)}
#@within nl_system:modules/status_effect/update/update_status

#data modify storage nl:buffer status.array set from storage nl:in_game player[{id:5}].status.status[]



#> 스토리지 계산 및 상태이상 지속시간 업데이트
# 상태이상 업데이트 타이머가 재설정 되고 nl:buffer status.subarray 안에 지속시간이 끝난 상태이상이 저장된다.

$function nl_system:modules/status_effect/update/calc_status_storage {base:$(base)}
scoreboard players set @s[scores={NL_status_update=100000}] NL_status_update 0 
scoreboard players set @s NL_status_update_count 0
$data modify storage nl:buffer status.subarray[].id set value $(base)
function nl_system:modules/status_effect/update/clear_expired_status/clear_expired_status



