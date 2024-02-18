#> nl_system:modules/status_effect/base/time_comparison
#
#@context 바꿀려는 대상 with storage nl:buffer status.set
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


$execute store result score #temp NL_status_update run data get storage nl:in_game player[{id:$(id)}].status.status[{tag:"$(tag)"}]
scoreboard players operation #temp NL_status_update -= @s NL_status_update_count
$scoreboard players set #temp NL_status_update_count $(time)
$execute if score #temp NL_status_update matches ..$(time) store result storage nl:in_game player[{id:$(id)}].status.status[{tag:"$(tag)"}].time int 1 run scoreboard players operation #temp NL_status_update_count += @s NL_status_update_count