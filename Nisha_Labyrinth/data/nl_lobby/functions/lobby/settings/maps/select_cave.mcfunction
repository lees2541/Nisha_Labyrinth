#alias vector c_spawnpoint 715 39 580
#alias vector c_shop 670 38 626
#alias vector c_lifestone 716 45 608



##맵 단위로 구분 및 저장해야 할 것 
######################################

## area 1/2/3/4/5/6/7 위치
function nl_lobby:maps/cave/entities/area_markers/set_area_markers

#####################################

## 레드스톤 자동생성기 오리진 마커 생성
function nl_lobby:maps/cave/entities/area_markers/set_origin_markers

## 알레이 위치 및 루트

###########################

## 생명석 위치
summon marker 716 45 608 {CustomNameVisible:0b,Tags:["NL","lifestone","marker"],CustomName:'{"text":"생명석"}',data:{}}

################################

##상점 위치
summon marker 670 38 626 {CustomNameVisible:0b,Tags:["NL","shop","marker"],CustomName:'{"text":"상점"}',data:{}}

################################

##상자 위치
function nl_lobby:lobby/settings/maps/cave/lib_chests_pos

###############################

## 죽은 후 좌표 
spawnpoint @a[tag=NL] 715 39 580
##############################

## 감옥 좌표

##############################

## 감옥 문열림 좌표

#############################



## 발판 태그

################################

## 도서관 경비병 및 루트

###############################

## 스폰 위치

###############################

## 문 위치

###############################

## 도서관 게이트 위치

################################

## 도서관 비상탈출구 지정

################################

