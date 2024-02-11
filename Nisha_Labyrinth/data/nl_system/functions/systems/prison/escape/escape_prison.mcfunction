#> nl_system:systems/prison/escape/escape_prison
# 탈옥 타임이 시작되는 함수

advancement grant @a[tag=NL] only nl_system:systems/prison/escape/jail_break
execute if data storage nl:in_game status.location.library{alarm:2} run function nl_system:systems/library/alarm/alarm_off


execute store result score #library NL_lib_alarm_gauge run data get storage nl:in_game status.location.library.gauge.max 1

data modify storage nl:in_game status.location.library.alarm set value 3
bossbar set nl:lib_alarm_gauge color purple
function nl_vfx:map/cave/trigger/jail_break
function nl_system:loop/countdown/prison/jail_break_timer


execute as @e[type=allay,tag=NL,tag=allay,scores={NL_mode=4..}] on passengers if entity @s[type=marker] run data remove entity @s data.id
execute as @e[type=allay,tag=NL,tag=allay,scores={NL_mode=4..}] run scoreboard players set @s NL_mode 1