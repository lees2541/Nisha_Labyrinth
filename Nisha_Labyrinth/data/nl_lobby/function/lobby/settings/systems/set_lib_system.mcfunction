#> nl_lobby:lobby/settings/systems/set_lib_system
# 게임 시작 시 도서관 시스템 리셋



data modify storage nl:in_game status.location.library.opened set value 0b


data modify storage nl:in_game status.location.library.gauge.max set from storage nl:settings location.library.gauge.max
execute store result bossbar nl:lib_alarm_gauge max run data get storage nl:settings location.library.gauge.max
execute store result score #max NL_lib_alarm_gauge run data get storage nl:settings location.library.gauge.max
bossbar set nl:altar_gauge value 0
scoreboard players set #library NL_altar_gauge 0
data modify storage nl:in_game status.location.library.alarm set value 1


scoreboard players set @a NL_lib_alarm_gauge 0
