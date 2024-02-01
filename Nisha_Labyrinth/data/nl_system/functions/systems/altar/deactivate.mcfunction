#> nl_system:systems/altar/deactivate
# 제단을 일시적으로 봉인하는 커맨드


execute if data storage nl:in_game status{ongoing:0} run return fail
data modify storage nl:in_game status.altar.mode set value 3

bossbar set nl:altar_gauge color purple

execute as @a at @s run playsound minecraft:corrupt_shutdown master @s ~ ~ ~ 0.2

execute as @e[type=interaction,tag=NL,tag=altar] at @s run summon text_display ~ ~1 ~ {Glowing:1b,view_range:3f,billboard:"center",see_through:1b,Tags:["NL","warning","altar"],text:'{"text":"봉인됨","color":"dark_purple","bold":true}'}

effect give @a[team=explorer] glowing 3

schedule function nl_system:systems/altar/bossbar/turn_default 6s replace