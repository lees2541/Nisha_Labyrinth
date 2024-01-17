#> nl_system:loop/entity/area_marker/area_marker_loop
# 지역마커의 루프, 자기 주변의 엔티티들에게 areaX 의 태그를 부여한다
#@context 지역마커 with entity @s data
#@within nl_system:loop/entity/entity_loop


## 범위내의 플레이어에게 areaX 의 태그 부여, 범위 밖의 플레이어에겐 areaX의 태그 삭제, 여기서 X는 번호이다
$tag @a[tag=NL,distance=..$(range)] add $(tag)
$tag @a[tag=NL,distance=$(range)..,tag=$(tag)] remove $(tag)