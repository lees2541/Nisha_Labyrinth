## 상태 클리어
effect clear @s
clear @s
advancement revoke @a everything
#function nishalabyrinth:tags/removetags
## 상태 셋팅
team join roamer @s
tag @s add NL
tag @s add roamer
#function nishalabyrinth:system/advancements/set_advancements
gamemode adventure @s


## 아이템 지급
function nl_char:items/roamer/roamer/roamer
give @s cooked_beef 64
