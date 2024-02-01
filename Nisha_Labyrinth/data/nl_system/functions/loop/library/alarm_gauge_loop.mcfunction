#> nl_system:loop/library/alarm_gauge_loop
# 도서관 경보 시스템 게이지 바 루프


#> 경보 게이지 계산
execute as @a[team=explorer,scores={NL_open_chest=1..},advancements={nl_system:location/library/in_the_library=true}] at @s if predicate nl_system:location/library/lib_patrol_range_dist run scoreboard players add @s NL_lib_alarm_gauge 100

execute unless score #library NL_lib_alarm_gauge matches 1000.. as @a[team=explorer,advancements={nl_system:location/library/in_the_library=true},predicate=!nl_system:status/action/sneaking] at @s at @e[type=wandering_trader,tag=NL,tag=patrol] if predicate nl_system:location/library/lib_patrol_range_dist run scoreboard players add @s NL_lib_alarm_gauge 10
execute unless score #library NL_lib_alarm_gauge matches 1000.. as @a[team=explorer,advancements={nl_system:location/library/in_the_library=true}] at @s if entity @e[tag=patrol,distance=..2] run scoreboard players add @s NL_lib_alarm_gauge 50
execute unless score #library NL_lib_alarm_gauge matches ..0 unless entity @a[team=explorer,tag=lib_range] run scoreboard players remove #library NL_lib_alarm_gauge 5


execute as @a run scoreboard players operation #library NL_lib_alarm_gauge += @s NL_lib_alarm_gauge

scoreboard players set @a NL_lib_alarm_gauge 0

#> 계산결과에 따른 보스바 갱신
execute if score #library NL_lib_alarm_gauge matches ..300 run bossbar set nl:lib_alarm_gauge color white
execute if score #library NL_lib_alarm_gauge matches 301..400 run bossbar set nl:lib_alarm_gauge color green
execute if score #library NL_lib_alarm_gauge matches 401..800 run bossbar set nl:lib_alarm_gauge color purple
execute if score #library NL_lib_alarm_gauge matches 801..999 run bossbar set nl:lib_alarm_gauge color red


execute if data storage nl:in_game status.location.library{alarm:1} if score #library NL_lib_alarm_gauge matches 1000.. run function nl_system:systems/library/alarm/alarm_on
#execute if score #library NL_lib_alarm_status matches 0 if score #library NL_lib_alarm_gauge matches 1000.. run advancement grant @a[team=explorer,advancements={nl_system:location/library/in_the_library=true}] only nishalabyrinth:system/library/alarm_red

#execute as @a[team=explorer,advancements={nl_system:location/library/in_the_library=true}] at @s positioned as @e[type=wandering_trader,tag=patrol,tag=NL,sort=nearest,limit=1] if predicate nishalabyrinth:system/library/lib_patrol_range_dist run tag @s add lib_range


#execute as @a[team=explorer,tag=lib_range] at @s positioned as @e[type=wandering_trader,tag=patrol,tag=NL,sort=nearest,limit=1] unless predicate nishalabyrinth:system/library/lib_patrol_range_dist run tag @s remove lib_range
#execute if score #library NL_lib_alarm_status matches 0 run function nishalabyrinth:system/library/alarm/alarm_guage_calc
execute if score #library NL_lib_alarm_gauge matches ..-1 run scoreboard players set #library NL_lib_alarm_gauge 0



