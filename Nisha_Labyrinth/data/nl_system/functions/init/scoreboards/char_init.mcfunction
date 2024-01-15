#> nl_system:init/scoreboards/char_init
# 
# @private
# @within nl_system:init/scoreboards/init_scoreboards

scoreboard objectives add E_efficiency dummy
#declare objective E_efficiency 도구 효율 인챈트 수치

scoreboard objectives add NL_stun_time dummy
#declare objective NL_stun_time 스턴시간

scoreboard objectives add NL_attack_cool dummy
#declare objective NL_attack_cool 배회자가 다음공격을 시도할 수 있을때까지 남은 시간

scoreboard objectives add NL_blindness_time dummy
#declare objective NL_blindness_time 남은 실명시간을 표시

scoreboard objectives add NL_sneaking_time dummy
#declare objective NL_sneaking_time 앉아있는 시간, 일어나면 초기화된다

scoreboard objectives add NL_alarm_timer dummy
#declare objective NL_alarm_timer 배회자가 앞에 있을 시 손전등이 깜박깜박하는 동작의 간격을 통제 







