#> nl_system:loop/countdown/prison/jail_break_timer
#

execute store result bossbar nl:lib_alarm_gauge value run scoreboard players remove #library NL_lib_alarm_gauge 5



execute if score #library NL_lib_alarm_gauge matches ..0 run return run function nl_system:systems/prison/escape/finish_jail_break
schedule function nl_system:loop/countdown/prison/jail_break_timer 1t replace