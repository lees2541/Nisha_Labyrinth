scoreboard players add @s[scores={NL_status_update_count=0..}] NL_status_update_count 1 

execute if score @s NL_status_update_count >= @s NL_status_update run function nl_system:modules/status_effect/update/update_status