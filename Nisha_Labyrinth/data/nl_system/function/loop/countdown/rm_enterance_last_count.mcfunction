execute if score #game NL_rm_enterance matches 300 run scoreboard players set #game NL_rm_enterance 3

title @p title {"score":{"name":"#game","objective":"NL_rm_enterance"},"color":"red","bold":true}
scoreboard players remove #game NL_rm_enterance 1
execute if score #game NL_rm_enterance matches -1 run tp @a[team=roamer] 691 50 577.5 -90 0
execute if score #game NL_rm_enterance matches -1 run return run tellraw @a {"text":"배회자가 활동을 시작했습니다","color":"dark_red","bold":true}
execute unless score #game NL_rm_enterance matches -1 run schedule function nl_system:loop/countdown/rm_enterance_last_count 1s replace