#> nl_system:modules/status_effect/update/calc_status_storage
# 플레이어의 스토리지 nl:in_game player.status.status 안의 타이머를 업데이트 한다
# 동시에 실행자의 NL_status_update를 업데이트 한다
#@context 해당 플레이어 {Base:(id)}
#@within nl_system:modules/status_effect/update/update_status
#@input
#   storage nl:buffer
#       status.array[]
#   storage nl:in_game
#       player[{id:$(Base)}].status.status[]
#   score @s NL_status_update_count
#@output
#   storage nl:buffer
#       status.subarray[]
#           계산 후 지속시간이 끝났다고 판단이 된 상태이상을 저장한다
#   storage nl:in_game
#       player[{id:$(Base)}].status.status[]
#           상태이상의 남은 시간이 인게임 스토리지에 업데이트 된다
#   score @s NL_status_update
#       상태이상 타이머가 재설정 된다
scoreboard players operation #temp NL_status_update_count = @s NL_status_update_count

scoreboard players set @s NL_status_update 100000


execute unless data storage nl:buffer status.array[0] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[0].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[0]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[0].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[1] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[1].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[1]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[1].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[2] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[2].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[2]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[2].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[3] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[3].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[3]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[3].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[4] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[4].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[4]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[4].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[5] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[5].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[5]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[5].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[6] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[6].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[6]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[6].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update

execute unless data storage nl:buffer status.array[7] run return 1
execute store result score #temp NL_status_update run data get storage nl:buffer status.array[7].time
execute if score #temp NL_status_update <= #temp NL_status_update_count run data modify storage nl:buffer status.subarray prepend from storage nl:buffer status.array[7]
$execute store result storage nl:in_game player[{id:$(Base)}].status.status[7].time int 1 run scoreboard players operation #temp NL_status_update -= #temp NL_status_update_count
execute if score #temp NL_status_update matches 1.. run scoreboard players operation @s NL_status_update < #temp NL_status_update