effect give @a[team=roamer] minecraft:night_vision 60
execute as @e[type=marker,tag=NL,tag=lifestone] at @s run setblock ~ ~ ~ bone_block destroy
execute store result storage nl:in_game status.altar.progress int 1 run scoreboard players set #game NL_altar_progress 10
bossbar set nl:altar_gauge name {"text":"\uE510\uE512"}
title @a title [{"text":"1분 후에 문이 열립니다..","color":"dark_red","bold":true}]
say 제단의 의식이 작동됐다. 배회자들이 포악해지기 시작했다. 달아나라...(1분)