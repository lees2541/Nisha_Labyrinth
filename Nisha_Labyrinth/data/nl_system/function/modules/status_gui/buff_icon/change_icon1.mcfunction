#> nl_system:modules/status_gui/buff_icon/change_icon1
# 두 번쨰 버프 슬롯 업데이트 (아래)
#@context 대상 with storage nl:buffer icon
# @input
#   storage nl:buffer icon
#       character
#       dir
#       call

## 바꿔야할것 \\u \u
$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=1}] run scoreboard players display numberformat player1_1 NL_status_gui fixed {"text":"\$(call2)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=2}] run scoreboard players display numberformat player2_1 NL_status_gui fixed {"text":"\$(call2)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=3}] run scoreboard players display numberformat player3_1 NL_status_gui fixed {"text":"\$(call2)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=4}] run scoreboard players display numberformat player4_1 NL_status_gui fixed {"text":"\$(call2)","color":"white"}




data remove storage nl:buffer icon
data remove storage nl:buffer player