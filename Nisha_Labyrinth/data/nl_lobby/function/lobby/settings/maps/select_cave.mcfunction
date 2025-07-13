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
summon marker 716 45 608 {CustomNameVisible:0b,Tags:["NL","lifestone_point","marker"],CustomName:'{"text":"생명석"}',data:{}}

################################

##상점 위치
summon marker 677 36 626 {CustomNameVisible:0b,Tags:["NL","shop","marker"],CustomName:'{"text":"상점"}',data:{}}
execute positioned as @e[type=marker,tag=NL,tag=marker,tag=shop,limit=1] run summon item_display ~1 ~3 ~ {Rotation:[90F,0F],Tags:["NL","shop","statue"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[2f,2f,2f]},item:{id:"minecraft:diamond_axe",count:1,components:{"minecraft:item_model":"map/shop"}}}
execute at @e[type=marker,tag=marker,tag=shop,limit=1] run summon interaction ~-0.8 ~2 ~ {width:1.2f,height:0.7f,response:1b,Tags:["NL","shop","statue"]}

## 상인 위치
#function nl_lobby:maps/cave/entities/shop_keeper/set_shop_keeper
function nl_lobby:maps/cave/entities/merchant/set_merchant



################################

##상자 위치
function nl_lobby:maps/cave/locations/library/set_lib_chests

###############################

## 죽은 후 좌표 
spawnpoint @a[tag=NL] 715 39 575
##############################
## 감옥 해골
summon item_display 713 40.3 587 {Rotation:[-180F,0F],Tags:["NL","skull","block","jail"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"map/prison/prison_bone"}}}
summon item_display 712 40.3 587 {Rotation:[-180F,0F],Tags:["NL","skull","block","jail"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"map/prison/prison_bone"}}}
summon item_display 711 40.3 587 {Rotation:[-180F,0F],Tags:["NL","skull","block","jail"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"map/prison/prison_bone"}}}
summon item_display 713 41.3 588 {Rotation:[-180F,0F],Tags:["NL","skull","block","jail"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"map/prison/prison_bone"}}}
summon item_display 712 41.3 588 {Rotation:[-180F,0F],Tags:["NL","skull","block","jail"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"map/prison/prison_bone"}}}
summon item_display 711 41.3 588 {Rotation:[-180F,0F],Tags:["NL","skull","block","jail"],item:{id:"minecraft:paper",count:1,components:{"minecraft:item_model":"map/prison/prison_bone"}}}

summon interaction 713 40 587 {response:1b,Tags:["NL","skull","jail"],width:0.6f,height:0.7f}
summon interaction 712 40 587 {response:1b,Tags:["NL","skull","jail"],width:0.6f,height:0.7f}
summon interaction 711 40 587 {response:1b,Tags:["NL","skull","jail"],width:0.6f,height:0.7f}
summon interaction 713 41 588 {response:1b,Tags:["NL","skull","jail"],width:0.6f,height:0.7f}
summon interaction 712 41 588 {response:1b,Tags:["NL","skull","jail"],width:0.6f,height:0.7f}
summon interaction 711 41 588 {response:1b,Tags:["NL","skull","jail"],width:0.6f,height:0.7f}


## 감옥 문 관련
summon minecraft:block_display 713. 41 577.5 {Rotation:[0F,90F],Tags:["NL","prison_door","prison_door1"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]},block_state:{Name:"minecraft:spruce_trapdoor"}}
summon block_display 703 41 585. {Rotation:[90F,90F],Tags:["NL","prison_door","prison_door2"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,2f]},block_state:{Name:"minecraft:spruce_trapdoor"}}
function nl_vfx:map/cave/prison/jail_break/set_barrier

##############################

## 감옥 덩굴
summon interaction 707 39 580 {width:0.8f,height:7f,response:1b,Tags:["NL","vine"]}
#############################



## 발판 태그
execute as @e[type=glow_item_frame,tag=NL,tag=cave] at @s run summon interaction ~ ~ ~ {width:0.9f,height:0.08f,response:1b,Tags:["NL","swamp"],Passengers:[{id:"minecraft:item_display",item_display:"head",Tags:["NL","swamp","tag"],brightness:{sky:10,block:15},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},item:{id:"minecraft:bamboo",count:1b,components:{"item_model":"map/swamp/swamp_marker"}}}]}
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
function nl_vfx:map/cave/prison/unseal_break/chainup/chainsp
setblock 708 45 580 minecraft:barrier
setblock 708 45 581 minecraft:barrier
setblock 707 45 581 minecraft:barrier
setblock 707 45 580 minecraft:barrier
################################

## 점프강화 울타리 interaction 설치
function nl_lobby:maps/cave/interactions/set_fences


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