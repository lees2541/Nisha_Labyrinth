#> 
# 맞고 대미지 판정받은 플레이어가 실행
damage @s 8 minecraft:indirect_magic by @a[limit=1,team=roamer,tag=hit]
function nl_system:systems/status_effects/hit/hit