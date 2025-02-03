#> nl_system:modules/status_gui/profile_icon/change_icon
#
#@context 대상 with storage nl:buffer icon
# @input
#   storage nl:buffer icon
#       character
#       dir
#       call
# @output
#
#@within
#   nl_system:modules/status_gui/profile_icon/case/default
#   nl_system:modules/status_gui/profile_icon/case/hit
#   nl_system:modules/status_gui/profile_icon/case/sacrifice
#   nl_system:modules/status_gui/profile_icon/case/stun

$execute as @s[team=!roamer,tag=$(character)] run scoreboard players display name @s NL_status_gui {"text":"\\$(call)","color":"white"}
$execute as @s[team=roamer,tag=$(character)] run scoreboard objectives modify NL_status_gui displayname {"text":"\\$(call)","color":"white"}

data remove storage nl:buffer icon
data remove storage nl:buffer player