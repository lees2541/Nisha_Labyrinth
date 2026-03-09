#> 
# 맞고 대미지 판정받은 플레이어가 실행
#@context nl_system:systems/hit/hit_explorer_adv with storage nl:in_game player
$damage @s $(damage) minecraft:indirect_magic by @a[limit=1,team=roamer,tag=hit]
function nl_system:systems/status_effects/hit/hit