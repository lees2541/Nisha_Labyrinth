#> nl_system:systems/entity/allay/condition_check
# 알레이의 모드변경 조건을 체크한다
#@within nl_system:loop/entity/allay/allay_loop

$execute unless data entity @s Passengers[{id:"minecraft:marker"}].data.id if entity @a[tag=NL,predicate=nl_system:status/action/sprinting,tag=$(tag)] run data modify entity @e[type=marker,tag=NL,tag=allay,tag=$(tag),limit=1,sort=nearest] data.id set from entity @a[tag=NL,tag=$(tag),predicate=nl_system:status/action/sprinting,limit=1,sort=nearest] Attributes[{Name:"minecraft:generic.luck"}].Base
execute if data entity @s Passengers[{id:"minecraft:marker"}].data.id unless entity @a[tag=NL,nbt={SelectedItem:{components:{"minecraft:custom_data":{lib:1b,prison_key:1b}}}},distance=..4] run return run scoreboard players set @s NL_mode 2
#execute if data entity @s Passengers[{id:"minecraft:marker"}].data.id run scoreboard players set @s NL_mode 2


$execute if entity @a[tag=NL,nbt={SelectedItem:{components:{"minecraft:custom_data":{lib:1b,prison_key:1b}}}},distance=..4] run data modify entity @e[type=marker,tag=NL,tag=allay,tag=$(tag),limit=1,sort=nearest] data.id set from entity @a[tag=NL,limit=1,sort=nearest,nbt={SelectedItem:{components:{"minecraft:custom_data":{lib:1b,prison_key:1b}}}},distance=..4] Attributes[{Name:"minecraft:generic.luck"}].Base

execute if data entity @s Passengers[{id:"minecraft:marker"}].data.id run scoreboard players set @s NL_mode 3