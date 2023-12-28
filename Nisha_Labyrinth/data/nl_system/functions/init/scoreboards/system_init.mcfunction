#> nl_system:init/scoreboards/system_init
# 시스템과 관련된 스코어보드 생성
# @private
# @within nl_system:init/scoreboards/init_scoreboards



scoreboard objectives add NL_player_id dummy
#declare objective NL_player_id 참가 플레이어 고유 id


scoreboard objectives add NL_lifestone_count dummy
#declare objective NL_lifestone_count 가진 생명석 개수

scoreboard objectives add NL_redstone_count dummy
#declare objective NL_redstone_count 가진 주술의 흔적 개수

scoreboard objectives add NL_status_gui dummy
#declare objective NL_status_gui 플레이어 화면의 오른쪽에 보이는 상태아이콘
 
scoreboard objectives add NL_rm_enterance dummy
#declare objective NL_rm_enterance 게임시작 후 배회자가 맵에 입장할때까지 걸리는 시간

scoreboard objectives add NL_temp dummy
#declare objective NL_temp 버퍼 개념의 스코어보드, 아무데서나 쓰인다.









