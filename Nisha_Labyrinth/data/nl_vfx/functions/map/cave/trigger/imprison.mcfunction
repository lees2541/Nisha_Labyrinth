#> nl_vfx:map/cave/trigger/imprison
# 죽었을 때 연출 트리거
# 주어진 좌표 엔티티: @e[type=marker,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx] 죽은 탐험가의 위치좌표 엔티티
# 마지막엔 꼭 처음에 줬던 위치좌표 엔티티들 지울 것, 모든 엔티티는 태그에 NL, nl_vfx를 붙일 것
#@public

#declare entity @e[type=marker,tag=coordinate,tag=NL,tag=imprison,tag=nl_vfx,limit=1] 감옥갈떄좌표 엔티티





#> 대상을 바라보는 예시
## 바라보는 주체가 다른 대상의 눈 위치를 바라보며 0.1칸 전진한다, run 이전의 facing은 시점좌표를 설정하는거고, run 후의 facing은 실제로 바라보는 행동을 취한다
#execute as @e[tag=바라보는주체] at @s facing entity @a[tag=바라볼대상,limit=1] eyes positioned ^ ^ ^0.1 run tp @s ~ ~ ~ facing entity @a[tag=바라볼대상,limit=1] eyes