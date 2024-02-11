#alias vector c_spawnpoint 715 39 580
#alias vector c_shop 670 38 626
#alias vector c_lifestone 716 45 608


## 맵 번호 저장
scoreboard players set #map NL_mode 1

##맵 단위로 구분 및 저장해야 할 것 
######################################

## area 1/2/3/4/5/6/7 위치
function nl_lobby:maps/cave/entities/area_markers/set_area_markers

#####################################

## 레드스톤 자동생성기 오리진 마커 생성
function nl_lobby:maps/cave/entities/area_markers/set_origin_markers

## 알레이 위치 및 루트
function nl_lobby:maps/cave/entities/set_allays/set_allays
###########################

## 생명석 위치
summon marker 716 45 608 {CustomNameVisible:0b,Tags:["NL","lifestone","marker"],CustomName:'{"text":"생명석"}',data:{}}

################################

##상점 위치
summon marker 670 38 626 {CustomNameVisible:0b,Tags:["NL","shop","marker"],CustomName:'{"text":"상점"}',data:{}}

################################

##상자 위치
function nl_lobby:maps/cave/locations/library/set_lib_chests

###############################

## 죽은 후 좌표 
spawnpoint @a[tag=NL] 715 39 575
##############################

## 감옥 문 관련
summon minecraft:block_display 713. 41 577.5 {Rotation:[0F,90F],Tags:["NL","prison_door","prison_door1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]},block_state:{Name:"minecraft:spruce_trapdoor"}}
summon block_display 703 41 585. {Rotation:[90F,90F],Tags:["NL","prison_door","prison_door2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]},block_state:{Name:"minecraft:spruce_trapdoor"}}
function nl_vfx:map/cave/prison/jail_break/set_barrier

##############################

## 감옥 문열림 좌표

#############################



## 발판 태그
execute as @e[type=glow_item_frame,tag=NL,tag=cave] at @s run summon interaction ~ ~ ~ {width:0.9f,height:0.08f,response:1b,Tags:["NL","swamp"],Passengers:[{id:"minecraft:item_display",Tags:["NL","swamp"],brightness:{sky:10,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,0.707f],translation:[0f,0f,0f],scale:[0.5f,1.1f,0.5f]},item:{id:"minecraft:bamboo",Count:1b}}]}
################################

## 도서관 경비병 및 루트

function nl_lobby:maps/cave/locations/library/set_route_point
function nl_lobby:maps/cave/locations/library/set_lib_guardians
###############################

## 스폰 위치

###############################

## 문 위치

###############################

## 도서관 게이트 위치

################################

## 도서관 비상탈출구 지정

################################

## 제단 interaction 엔티티 설치
summon interaction 686 49.1 577 {Tags:["altar","NL"]}
summon interaction 685 49.1 577 {Tags:["altar","NL"]}
summon interaction 684 49.1 577 {Tags:["altar","NL"]}
summon interaction 683 49.1 577 {Tags:["altar","NL"]}
summon interaction 682 49.1 577 {Tags:["altar","NL"]}
summon interaction 681 49.1 577 {Tags:["altar","NL"]}
summon interaction 679 49.1 577 {Tags:["altar","NL"]}



summon interaction 678 49.1 578 {Tags:["altar","NL","altar_side"]}

summon interaction 677 49.1 576 {Tags:["altar","NL","altar_side"]}

summon interaction 676 49.1 578 {Tags:["altar","NL","altar_side"]}

summon interaction 675 49.1 576 {Tags:["altar","NL","altar_side"]}

summon interaction 674 49.1 578 {Tags:["altar","NL","altar_side"]}

summon interaction 673 49.1 576 {Tags:["altar","NL","altar_side"]}

summon interaction 672 49.1 578 {Tags:["altar","NL","altar_side"]}

summon interaction 671 49.1 576 {Tags:["altar","NL","altar_side"]}

summon interaction 669 50.1 577 {Tags:["altar","NL","altar_side"]}

summon interaction 676 52.1 629 {Tags:["altar","NL","altar_side"]}

summon interaction 677 52.1 629 {Tags:["altar","NL","altar_side"]}

summon interaction 678 52.1 629 {Tags:["altar","NL","altar_side"]}

summon interaction 679 52.1 629 {Tags:["altar","NL","altar_side"]}

summon interaction 680 52.1 629 {Tags:["altar","NL","altar_side"]}