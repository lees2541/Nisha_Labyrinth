#> nl_system:systems/altar/progress/trigger_altar
#
# @context 커맨드블럭 {progress:(int)}

function nl_system:systems/altar/bossbar/turn_default
data modify storage nl:in_game status.altar.mode set value 1
$execute store result storage nl:in_game status.altar.progress int 1 run scoreboard players set #game NL_altar_progress $(progress)
scoreboard players operation #altar NL_altar_gauge = #max NL_altar_gauge

$bossbar set nl:altar_gauge name {"text":"\uE50$(progress)\uE512"}

title @a title {"text":"제단","color":"dark_red","bold":true}

execute if predicate nl_system:status/altar/coin run loot give @a[tag=explorer,tag=NL] loot nl_system:items/shop/coin
execute as @e[type=marker,tag=NL,tag=lifestone] at @s run setblock ~ ~ ~ bone_block destroy
execute as @a[advancements={nl_system:systems/actions/interactions/altar/hit=true}] run effect give @s glowing 8
