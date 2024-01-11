#> nl_system:modules/status_effect/update/call_change_icon
# status_gui 의 아이콘을 바꾸는 함수를 호출한다
#@context 대상 with storage nl:buffer status
#@input
#   storage nl:buffer
#       status.type

execute if data storage nl:buffer status{type:"stun"} run return run function nl_system:modules/status_gui/change_icon/stun


## 스킬일때 부르는 함수
