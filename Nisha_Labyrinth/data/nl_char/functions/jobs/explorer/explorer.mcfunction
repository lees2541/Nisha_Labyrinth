


## 상태 초기화
effect clear @s
clear @s
advancement revoke @s everything
#function nishalabyrinth:tags/removetags
team join explorer @s
tag @s add NL
tag @s add explorer

#function nishalabyrinth:system/advancements/set_advancements

execute if score @s E_efficiency matches ..1 run scoreboard players set @s E_efficiency 16

## 상태 셋팅
spawnpoint @s[team=explorer] 712 53 623
gamemode adventure @s

effect give @s haste infinite 1 true
effect give @s mining_fatigue infinite 3 true


## 아이템 지급
function nl_char:items/explorer/explorer/explorer
give @s cooked_beef{NL:1b} 10






