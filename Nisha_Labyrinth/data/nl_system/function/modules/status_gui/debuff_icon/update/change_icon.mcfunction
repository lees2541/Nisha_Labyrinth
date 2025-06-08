#> nl_system:modules/status_gui/debuff_icon/update/change_icon
# 
# @context 대상 with storage nl:buffer player
# @within nl_system:modules/status_gui/debuff_icon/update/update_icon




$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=1}] run scoreboard players display name player1_2 NL_status_gui {"text":"\$(debuff_icon)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=2}] run scoreboard players display name player2_2 NL_status_gui {"text":"\$(debuff_icon)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=3}] run scoreboard players display name player3_2 NL_status_gui {"text":"\$(debuff_icon)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=4}] run scoreboard players display name player4_2 NL_status_gui {"text":"\$(debuff_icon)","color":"white"}