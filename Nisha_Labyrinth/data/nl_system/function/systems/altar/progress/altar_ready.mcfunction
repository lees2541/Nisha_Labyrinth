#> nl_system:systems/altar/progress/altar_ready
# 알터 게이지가 다 찼을 시 발동
#@within nl_system:systems/altar/gauge/gauge_value_calc



data modify storage nl:in_game status.altar.mode set value 2
bossbar set nl:altar_gauge color red
scoreboard players set #altar NL_altar_gauge 0

## 제단 모래 올리기
execute if score #game NL_altar_progress matches 1 run setblock 678 43 575 minecraft:redstone_block replace

execute if score #game NL_altar_progress matches 1 run summon interaction 678 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 2 run setblock 677 39 581 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 2 run summon interaction 677 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 3 run setblock 676 44 575 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 3 run summon interaction 676 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 4 run setblock 675 40 579 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 4 run summon interaction 675 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 5 run setblock 674 43 575 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 5 run summon interaction 674 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 6 run setblock 673 40 579 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 6 run summon interaction 673 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 7 run setblock 672 44 575 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 7 run summon interaction 672 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 8 run setblock 671 40 579 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 8 run summon interaction 671 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}
execute if score #game NL_altar_progress matches 9 run setblock 670 44 575 minecraft:redstone_block replace
execute if score #game NL_altar_progress matches 9 run summon interaction 670 49.1 577 {CustomNameVisible:1b,Tags:["NL","altar"]}