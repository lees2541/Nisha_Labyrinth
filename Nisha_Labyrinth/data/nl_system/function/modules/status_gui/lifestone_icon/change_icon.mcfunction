#> nl_system:modules/status_gui/lifestone_icon/change_icon
#
#@context 대상 with storage nl:buffer icon
# @input
#   storage nl:buffer icon
#       character
#       dir
#       call
# @output
#
#

#$execute as @s[team=!roamer,tag=$(character)] run scoreboard players display numberformat @s NL_status_gui fixed {"text":"\$(call)","color":"white"}
$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=1}] run scoreboard players display name player1_1 NL_status_gui {"text":"\$(call)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=2}] run scoreboard players display name player2_1 NL_status_gui {"text":"\$(call)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=3}] run scoreboard players display name player3_1 NL_status_gui {"text":"\$(call)","color":"white"}


$execute if entity @s[team=!roamer,tag=$(character),scores={NL_player_id=4}] run scoreboard players display name player4_1 NL_status_gui {"text":"\$(call)","color":"white"}

data remove storage nl:buffer icon
data remove storage nl:buffer player