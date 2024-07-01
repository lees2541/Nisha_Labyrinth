#> nl_system:init/scoreboards/bossbar_init
# 
# @private
# @within nl_system:init/scoreboards/init_scoreboards

bossbar add nl:altar_gauge "altar gauge"
scoreboard objectives add NL_altar_gauge dummy
#declare bossbar nl:altar_gauge 제단 게이지를 보여주는 보스바
#declare objective NL_altar_gauge 제단 게이지 바와 연동되는 스코어보드

bossbar add nl:lib_alarm_gauge {"text":"경계도"}
bossbar set nl:lib_alarm_gauge max 1000
scoreboard objectives add NL_lib_alarm_gauge dummy
#declare bossbar nl:lib_alarm_gauge 도서관의 발각되는 게이지를 보여주는 보스바
#declare objective NL_lib_alarm_gauge 도서관 알람 게이지 보스바와 연동되는 스코어보드