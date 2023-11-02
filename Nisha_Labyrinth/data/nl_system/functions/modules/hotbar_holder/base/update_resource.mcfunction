#> nl_system:modules/hotbar_holder/base/update_resource
#
# @context 인벤토리 갱신하는 실행자 with storage nl:buffer player
# @input
#   storage nl:buffer player.id
#   score @s NL_lifestone_count
# @output
#   storage nl:in_game player.status.resource.lifestone
# @within nl_system:modules/hotbar_holder/base/inventory_changed_detection_adv
$execute store result storage nl:in_game player[{id:$(id)}].status.resource.lifestone int 1 run scoreboard players get @s NL_lifestone_count