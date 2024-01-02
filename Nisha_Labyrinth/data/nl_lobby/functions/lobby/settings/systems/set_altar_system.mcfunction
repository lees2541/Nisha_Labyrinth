## 제단 게이지 세팅
data modify storage nl:in_game status.altar.speed set from storage nl:settings altar.gauge.speed
execute store result bossbar nl:altar_gauge max run data get storage nl:settings altar.gauge.max
execute store result score #max NL_altar_gauge run data get storage nl:settings altar.gauge.max
bossbar set nl:altar_gauge value 0
scoreboard players operation #altar NL_altar_gauge = #max NL_altar_gauge
bossbar set nl:altar_gauge players @a
bossbar set nl:altar_gauge visible true
data modify storage nl:in_game status.altar.mode set value 1

## 제단 진행도 세팅
scoreboard players set #game NL_altar_progress 0