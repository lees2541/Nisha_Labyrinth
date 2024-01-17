#> nl_system:systems/entity/allay/mode/mode_2
# 알레이가 플레이어를 따라가는 모드
#@within nl_system:loop/entity/allay/allay_loop


## 무빙
 
$execute if entity @a[tag=NL,distance=2.5..,nbt={Attributes:[{Name:"minecraft:generic.luck",Base:$(id).0d}]}] at @s facing entity @a[tag=NL,nbt={Attributes:[{Name:"minecraft:generic.luck",Base:$(id).0d}]},limit=1,sort=nearest] eyes positioned ^ ^ ^0.1 if predicate nl_system:location/blocks/air_or_unblockable run tp @s ~ ~ ~ facing entity @a[tag=NL,nbt={Attributes:[{Name:"minecraft:generic.luck",Base:$(id).0d}]},limit=1,sort=nearest] eyes



$execute unless entity @a[tag=NL,tag=$(tag),nbt={Attributes:[{Name:"minecraft:generic.luck",Base:$(id).0d}]}] run data remove entity @e[type=marker,tag=allay,tag=$(tag),limit=1,sort=nearest] data.id
$execute unless entity @a[tag=NL,tag=$(tag),nbt={Attributes:[{Name:"minecraft:generic.luck",Base:$(id).0d}]}] run scoreboard players set @s NL_mode 1