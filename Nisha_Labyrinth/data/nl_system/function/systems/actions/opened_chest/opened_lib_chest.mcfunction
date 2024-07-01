#> nl_system:systems/actions/opened_chest/opened_lib_chest

execute align xyz if block ~ ~ ~ chest if data block ~ ~ ~ {Lock:"key"} run return run title @s actionbar {"text":"배회자가 해당 상자를 잠궜습니다"}


## 배회자가 상자를 열 때 상자 잠금
execute align xyz if block ~ ~ ~ chest if entity @e[sort=nearest,limit=1,type=marker,tag=chest,tag=library,distance=..2] if entity @s[team=roamer] run tag @e[type=marker,distance=..2,limit=1,sort=nearest] add locked
execute align xyz if block ~ ~ ~ chest if entity @e[sort=nearest,limit=1,type=marker,tag=chest,tag=library,distance=..2] if entity @s[team=roamer] run return run data merge block ~ ~ ~ {Lock:"key"}

## 이미 발동된 상자일때 리턴
execute align xyz if block ~ ~ ~ chest if entity @e[sort=nearest,limit=1,type=marker,tag=chest,tag=library,distance=..2,tag=occupied] run return 3

#> 해당 상자마커에 정보수정 및 탐험가 알람게이지 오르는 정도 설정(리턴값)
execute align xyz if block ~ ~ ~ chest if entity @e[sort=nearest,limit=1,type=marker,tag=chest,tag=library,distance=..2] store result score @s NL_lib_alarm_gauge as @e[sort=nearest,limit=1,type=marker,tag=chest,tag=library,distance=..2] at @s run return run function nl_system:systems/library/chest_looting/active_chest


execute unless entity @e[type=marker,tag=NL,distance=..6] run return 2
execute positioned ^ ^ ^0.2 run function nl_system:systems/actions/opened_chest/opened_lib_chest