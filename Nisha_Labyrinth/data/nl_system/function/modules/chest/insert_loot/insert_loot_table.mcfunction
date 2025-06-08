#> nl_system:modules/chest/insert_loot/insert_loot_table
# 상자에 파밍 물품을 넣는다
#@context 선택된 상자 마커 {tag: (태그),path: (경로)}
#@public


$execute align xyz if block ~ ~ ~ chest run loot insert ~ ~ ~ loot nl_system:chests/$(path)
#$execute align xyz if block ~ ~ ~ chest run tag @s add $(tag)
