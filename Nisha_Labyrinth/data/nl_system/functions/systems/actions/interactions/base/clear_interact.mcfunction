#> nl_system:systems/actions/interactions/base/clear_interact
# 상호작용 엔티티에 저장된 마지막으로 상호작용한 사람의 uuid 삭제


## 발전과제 관련 순서 버그로 인해 임시 삭제

say 상호작용 uuid초기화

$execute at @s as @e[type=interaction,sort=nearest,limit=1,nbt={interaction:{player:$(UUID)}},tag=NL] run data remove entity @s interaction