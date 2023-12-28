scoreboard players remove #game NL_rm_enterance 1
title @p actionbar {"score":{"name":"#game","objective":"NL_rm_enterance"},"color":"white"}
execute if score #game NL_rm_enterance matches ..0 run return run function nl_system:loop/countdown/rm_enterance_last_count
schedule function nl_system:loop/countdown/rm_enterance 1s replace