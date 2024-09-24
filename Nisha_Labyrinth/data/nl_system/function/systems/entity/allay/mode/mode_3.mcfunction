#> nl_system:systems/entity/allay/mode/mode_3
# 알레이가 열쇠 든 플레이어를 따라가는 모드
#@within nl_system:loop/entity/allay/allay_loop


$execute if entity @a[tag=NL,distance=2..,nbt={attributes:[{id:"minecraft:luck",base:$(id).0d}]}] at @s facing entity @a[tag=NL,nbt={attributes:[{id:"minecraft:luck",base:$(id).0d}]},limit=1,sort=nearest] eyes positioned ^ ^ ^0.15 if predicate nl_system:location/blocks/air_or_unblockable run tp @s ~ ~ ~ facing entity @a[tag=NL,nbt={attributes:[{id:"minecraft:luck",base:$(id).0d}]},limit=1,sort=nearest] eyes


$execute unless entity @a[tag=NL,nbt={attributes:[{id:"minecraft:luck",base:$(id).0d}]},nbt={SelectedItem:{components:{"minecraft:custom_data":{lib:1b,prison_key:1b}}}}] run data remove entity @e[type=marker,tag=allay,tag=$(tag),limit=1,sort=nearest] data.id
$execute unless entity @a[tag=NL,nbt={attributes:[{id:"minecraft:luck",base:$(id).0d}]},nbt={SelectedItem:{components:{"minecraft:custom_data":{lib:1b,prison_key:1b}}}}] run scoreboard players set @s NL_mode 1