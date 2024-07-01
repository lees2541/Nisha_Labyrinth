#> nl_system:systems/altar/gauge/gauge_value_calc
# 제단 게이지 계산
# @within nl_system:loop/altar/altar_loop
execute store result score #altar NL_temp run data get storage nl:in_game status.altar.speed
scoreboard players operation #max NL_temp = #max NL_altar_gauge
execute if data storage nl:in_game status.altar{mode:1} run scoreboard players operation #var NL_altar_gauge += #altar NL_temp
execute as @a[scores={NL_altar_gauge=1..}] run scoreboard players operation #var NL_altar_gauge += @s NL_altar_gauge

execute if data storage nl:in_game status.altar{mode:1} if score #altar NL_altar_gauge <= #var NL_altar_gauge run function nl_system:systems/altar/progress/altar_ready
execute if data storage nl:in_game status.altar{mode:1} run scoreboard players operation #altar NL_altar_gauge -= #var NL_altar_gauge

execute store result bossbar nl:altar_gauge value run scoreboard players operation #max NL_temp -= #altar NL_altar_gauge

scoreboard players set @a NL_altar_gauge 0
scoreboard players set #var NL_altar_gauge 0

