#> nl_vfx:map/cave/trigger/open_library
# 다른 데이터팩 폴더에선 nl_vfx 폴더안의 trigger 폴더안의 함수밖에 접근이 안된다, 즉 이 파일을 호출하면 다른 모든게 동작되어야 한다.
# 이 함수는 도서관 개방 연출을 담당한다.
#@private
#@within nl_system:systems/library/access_control/open_library

function nl_vfx:map/cave/library/access_control/lockout




setblock 700 47 600 air replace
setblock 700 47 599 air replace
setblock 700 47 598 air replace

setblock 700 48 599 air replace
setblock 700 48 600 air replace



setblock 713 41 577 redstone_lamp[lit=false] destroy
setblock 707 41 587 redstone_lamp[lit=false] destroy