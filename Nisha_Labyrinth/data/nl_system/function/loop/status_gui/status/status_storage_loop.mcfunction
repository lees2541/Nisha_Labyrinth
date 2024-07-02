execute if score @s NL_status_update matches 1.. run scoreboard players add @s[scores={NL_status_update_count=0..}] NL_status_update_count 1 

execute if score @s NL_status_update matches 1.. if score @s NL_status_update_count >= @s NL_status_update run function nl_system:modules/status_effect/update/update_status with entity @s attributes[{id:"minecraft:generic.luck"}]

data remove storage nl:buffer status