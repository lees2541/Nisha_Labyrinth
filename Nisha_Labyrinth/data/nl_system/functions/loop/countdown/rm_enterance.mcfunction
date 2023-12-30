scoreboard players remove #game NL_rm_enterance 1
title @p actionbar {"score":{"name":"#game","objective":"NL_rm_enterance"},"color":"white"}

execute if score #game NL_rm_enterance matches ..0 run title @p subtitle {"text":"배회자가 곧 등장합니다.. 조심하세요","color":"white","bold":true}
execute if score #game NL_rm_enterance matches ..0 run scoreboard players set #game NL_rm_enterance 300
execute if score #game NL_rm_enterance matches 300 run return run function nl_system:loop/countdown/rm_enterance_last_count
schedule function nl_system:loop/countdown/rm_enterance 1s replace