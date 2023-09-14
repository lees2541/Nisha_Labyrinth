effect clear @s
clear @s
scoreboard players reset @s NL_chance

team join gate_keeper @s
give @s cooked_beef 64
bossbar set nl:lighted_time players @a
function nishalabyrinth:tags/removetags
advancement revoke @s everything
function nishalabyrinth:system/advancements/set_advancements
function nishalabyrinth:item/info_book/give_book









