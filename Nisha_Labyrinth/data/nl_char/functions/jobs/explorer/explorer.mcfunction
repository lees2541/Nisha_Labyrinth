## 상태 클리어
effect clear @s
clear @s
advancement revoke @a everything
function nishalabyrinth:tags/removetags
## 상태 셋팅
team join explorer @s
tag @s add NL
function nishalabyrinth:system/advancements/set_advancements
spawnpoint @s[team=explorer] 712 53 623
gamemode adventure @s


## 아이템 지급
function nl_char:items/explorer/explorer
give @s cooked_beef 2






