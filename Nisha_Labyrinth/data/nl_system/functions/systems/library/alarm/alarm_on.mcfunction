#> nl_system:systems/library/alarm/alarm_on
# 도서관 경계도 게이지가 다 찼을 때 발동


bossbar set nl:lib_alarm_gauge color purple
scoreboard players set #library NL_lib_alarm_gauge 5000
data modify storage nl:in_game status.location.library.alarm set value 2
say 도서관 알람 ㅜ이이잉

advancement grant @a[advancements={nl_system:location/library/in_the_library=true},tag=NL] only nl_system:systems/library/alarm/alarm_red
#loot give @a[team=roamer] loot minecraft:command/item/library/tp_lib_orb


schedule function nl_system:systems/library/alarm/alarm_off 15s replace
function nl_system:systems/library/access_control/close_library

