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

$execute as @s[team=!roamer,tag=$(character)] run scoreboard players display numberformat @s NL_status_gui fixed {"text":"\$(call)","color":"white"}
#$execute as @a[team=roamer,tag=$(character)] run scoreboard objectives modify NL_status_gui displayname {"text":"\$(call)","color":"white"}

data remove storage nl:buffer icon
data remove storage nl:buffer player