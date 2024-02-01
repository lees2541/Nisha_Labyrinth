#> nl_vfx:map/cave/trigger/close_library
# 다른 데이터팩 폴더에선 nl_vfx 폴더안의 trigger 폴더안의 함수밖에 접근이 안된다, 즉 이 파일을 호출하면 다른 모든게 동작되어야 한다.
# 이 함수는 도서관 폐쇄 연출을 담당한다.
#@private
#@within nl_system:systems/library/access_control/close_library

function nl_vfx:map/cave/library/access_control/lockin

fill 712 48 573 709 51 573 minecraft:barrier destroy