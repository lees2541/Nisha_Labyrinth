#> nl_lobby:clear/bossbar/clear_bossbar
# 보스바 관련 클리어

bossbar set nl:altar_gauge visible false
bossbar set nl:altar_gauge value 0
data modify storage nl:in_game status.altar.mode set value 0

bossbar set nl:lib_alarm_gauge visible false
bossbar set nl:lib_alarm_gauge value 0