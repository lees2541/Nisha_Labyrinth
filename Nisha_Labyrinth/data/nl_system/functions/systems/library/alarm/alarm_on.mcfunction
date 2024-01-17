bossbar set nl:lib_alarm_gauge color purple
scoreboard players set r NL_lib_alarm_gauge 5000
scoreboard players set r NL_altar_status_adv 1
scoreboard players set r NL_lib_alarm_status 1
loot give @a[team=roamer] loot minecraft:command/item/library/tp_lib_orb

function nishalabyrinth:system/altar/bossbar/into_purple
schedule function nishalabyrinth:system/library/alarm/alarm_off 15s replace
function nishalabyrinth:system/fences_reset/set_all_fences

