#> nl_system:systems/altar/progress/trigger_altar
# 제단에 올렸을 때 발동, progress는 진행단계(1 - 9 단계)
# @context 커맨드블럭 {progress:(int)}


say 제단에올림
function nl_system:systems/altar/bossbar/turn_default
data modify storage nl:in_game status.altar.mode set value 1
$execute store result storage nl:in_game status.altar.progress int 1 run scoreboard players set #game NL_altar_progress $(progress)
scoreboard players operation #altar NL_altar_gauge = #max NL_altar_gauge
bossbar set nl:altar_gauge color white


$bossbar set nl:altar_gauge name {"text":"\uE50$(progress)\uE512"}

title @a title {"text":"제단","color":"dark_red","bold":true}
## 도서관 상자 리셋
execute as @e[type=marker,tag=NL,tag=library,tag=chest] at @s align xyz run function nl_system:systems/library/chest_looting/content/reset_chest_content

## 오염된 늪 스폰
function nl_system:systems/swamp/tainted_swamp/set_tainted_swamp
## 뽑기코인 지급
execute if predicate nl_system:status/altar/coin run loot give @a[tag=explorer,tag=NL] loot nl_system:items/shop/coin

## 감옥에 사람이 있을 시 도서관에 열쇠 스폰
execute if entity @a[team=prisoner,tag=prisoner] as @e[type=marker,tag=library,tag=chest,tag=!library_key,tag=!prison_key,limit=1,sort=random] at @s run function nl_system:modules/chest/insert_loot/insert_loot_table {tag:prison_key,path:"keys/prison_key"}

## 생명석 스폰
execute as @e[type=marker,tag=NL,tag=lifestone] at @s run setblock ~ ~ ~ bone_block destroy

## 제단에 올린사람 발광
execute as @a[advancements={nl_system:systems/actions/interactions/altar/hit=true}] run effect give @s glowing 8
