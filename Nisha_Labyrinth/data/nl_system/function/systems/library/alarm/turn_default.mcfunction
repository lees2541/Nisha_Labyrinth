#> nl_system:systems/library/alarm/turn_default

bossbar set nl:lib_alarm_gauge color white
data modify storage nl:in_game status.location.library.alarm set value 1
scoreboard players set #library NL_lib_alarm_gauge 0