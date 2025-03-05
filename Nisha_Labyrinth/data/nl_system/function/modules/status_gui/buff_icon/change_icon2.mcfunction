#> nl_system:modules/status_gui/buff_icon/change_icon2
# 첫번쨰 버프슬롯 업데이트 (위)
#@context 대상 with storage nl:buffer icon
# @input
#   storage nl:buffer icon
#       character
#       dir
#       call



$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=1}] run scoreboard players display name player1_2 NL_status_gui {"text":"\$(call)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=2}] run scoreboard players display name player2_2 NL_status_gui {"text":"\$(call)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=3}] run scoreboard players display name player3_2 NL_status_gui {"text":"\$(call)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=4}] run scoreboard players display name player4_2 NL_status_gui {"text":"\$(call)","color":"white"}



data remove storage nl:buffer icon
data remove storage nl:buffer player