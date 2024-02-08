#> nl_system:systems/actions/interactions/base/clear_hit
# 상호작용 엔티티에 저장된 마지막으로 때린사람의 uuid 삭제


## 발전과제 관련 순서 버그로 인해 임시 삭제
$execute at @s as @e[type=interaction,limit=1,sort=nearest,nbt={attack:{player:$(UUID)}},tag=NL] run data remove entity @s attack