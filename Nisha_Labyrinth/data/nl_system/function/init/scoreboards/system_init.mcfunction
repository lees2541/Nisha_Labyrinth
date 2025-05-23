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

scoreboard objectives add NL_status_update dummy
#declare objective NL_status_update 오른쪽 GUI 업데이트 타이밍을 알려주는 스코어보드 (가장 빨리끝날 상태의 남은시간을 반영한다, 틱당 변화 x)
 
scoreboard objectives add NL_status_update_count dummy
#declare objective NL_status_update_count 틱당 1씩 올라간다, NL_status_updat와 같은 값이되면 업데이트

scoreboard objectives add NL_rm_enterance dummy
#declare objective NL_rm_enterance 게임시작 후 배회자가 맵에 입장할때까지 걸리는 시간

scoreboard objectives add NL_altar_progress dummy
#declare objective NL_altar_progress 제단 진행도, 0단계부터 10단계까지 쓰인다

scoreboard objectives add NL_temp dummy
#declare objective NL_temp 버퍼 개념의 스코어보드, 아무데서나 쓰인다.

scoreboard objectives add NL_mined_red minecraft.mined:minecraft.redstone_ore
#declare objective NL_mined_red 레드스톤 캔 횟수, 개인 이벤트 트리거는 플레이어 스코어보드,개인은 #(id),그리고 총합은 #explorer 에 기록

scoreboard objectives add NL_mined_life minecraft.mined:minecraft.bone_block
#declare objective NL_mined_life 생명석 캔 횟수, 개인 이벤트 트리거는 플레이어 스코어보드,개인은 #(id),그리고 총합은 #explorer 에 기록

scoreboard objectives add NL_mined_mana minecraft.mined:minecraft.lapis_block

scoreboard objectives add NL_timer dummy
#declare objective NL_timer 범용 타이머, #(주제)를 이용해 시간을 잰다.

scoreboard objectives add NL_flashlight dummy
#declare objective NL_flashlight 현재 손전등 상태 혹은 시야 상태를 조절한다(쉐이더 연동)

scoreboard objectives add NL_mode dummy
#declare objective NL_mode 범용 모드저장 스코어보드, 현재 상태를 기록한다.

scoreboard objectives add NL_death deathCount
#declare objective NL_death 죽음감지 스코어보드

scoreboard objectives add NL_count dummy
#declare objective NL_count 범용 횟수 카운트 스코어보드, #xxx 형식으로 기록한다

scoreboard objectives add NL_food_level food
