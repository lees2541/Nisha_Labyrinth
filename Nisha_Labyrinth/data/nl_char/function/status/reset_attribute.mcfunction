#> nl_char:status/reset_attribute
#
## 다른 캐릭터로 옮길 수 있도록 초기화를 진행한다.##
#####################################################


attribute @s generic.attack_damage base set 1
attribute @s generic.attack_speed base set 4
execute unless data storage nl:in_game status{ongoing:2} run attribute @s minecraft:generic.luck base set 0
######################################################


## OVERLAY GUI 클리어
<<<<<<< HEAD
execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
=======
execute at @s run particle entity_effect{color:[0.9960784313725490196078431372549,0.9803921569627451,1.0,1.0]} ~ ~ ~ 0 0 0 1 0 force @s

execute at @s run particle entity_effect{color:[0.9960784313725490196078431372549,0.9725490196078431,1.0,1.0]} ~ ~ ~ 0 0 0 1 0 force @s

execute at @s run particle entity_effect{color:[0.9960784313725490196078431372549,0.98823529411764705882352941176471,1.0,1.0]} ~ ~ ~ 0 0 0 1 0 force @s

#execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9803921569627451 1 1 0 force @s
#execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.9725490196078431 1 1 0 force @s
#execute as @s at @s run particle minecraft:entity_effect ~ ~ ~ 0.9960784313725490196078431372549 0.98823529411764705882352941176471 1 1 0 force @s
>>>>>>> newItemFormatUpdate


