맵 단위로 구분 및 저장해야 할 것 
######################################

## area 1/2/3/4 위치
summon marker 708. 51. 581. {CustomNameVisible:1b,Tags:["NL","area1","area"],CustomName:'{"text":"Area1","color":"red","bold":true}'}
summon marker 685 46 615 {CustomNameVisible:1b,Tags:["NL","area2","area"],CustomName:'{"text":"Area2","color":"red","bold":true}'}
summon marker 671 55 621 {CustomNameVisible:1b,Tags:["NL","area3","area"],CustomName:'{"text":"Area3","color":"red","bold":true}'}
summon marker 665 47 624 {CustomNameVisible:1b,Tags:["NL","area4","area"],CustomName:'{"text":"Area4","color":"red","bold":true}'}
summon marker 708 38.5 580 {CustomNameVisible:1b,Tags:["NL","prison","area"],CustomName:'{"text":"Prison","color":"red","bold":true}'}

#####################################

## 알레이 위치 및 루트

###########################

## 생명석 위치
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["NL","lifestone","marker"],CustomName:'{"text":"생명석"}',data:{}}

################################

##상점 위치
summon marker ~ ~ ~ {CustomNameVisible:0b,Tags:["NL","shop","marker"],CustomName:'{"text":"상점"}',data:{}}

################################

##상자 위치
function nl_lobby:lobby/settings/maps/cave/lib_chests_pos

###############################

죽은 후 좌표 
spawnpoint @a[tag=NL] 715 39 580
##############################

감옥 좌표

##############################

감옥 문열림 좌표

#############################



발판 태그

################################

도서관 경비병 및 루트

###############################

스폰 위치

###############################

문 위치

###############################

도서관 게이트 위치

################################

도서관 비상탈출구 지정

################################

