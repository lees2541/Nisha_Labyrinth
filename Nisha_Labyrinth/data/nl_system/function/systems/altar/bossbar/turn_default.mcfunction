execute if score #altar NL_altar_gauge < #max NL_altar_gauge run data modify storage nl:in_game status.altar.mode set value 1
execute unless score #altar NL_altar_gauge < #max NL_altar_gauge run data modify storage nl:in_game status.altar.mode set value 2


execute if score #altar NL_altar_gauge < #max NL_altar_gauge run bossbar set nl:altar_gauge color white
execute unless score #altar NL_altar_gauge < #max NL_altar_gauge run bossbar set nl:altar_gauge color red

execute as @e[type=text_display,tag=warning,tag=NL,tag=altar] run kill @s


