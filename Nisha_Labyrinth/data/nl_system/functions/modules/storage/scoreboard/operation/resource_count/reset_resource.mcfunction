#> nl_system:modules/storage/scoreboard/operation/resource_count/reset_resource
#
#@context 실행하는플레이어 with storage nl:buffer player.id
say 리소스초기화

scoreboard players set @s NL_redstone_count 0
scoreboard players set @s NL_lifestone_count 0
function nl_system:modules/storage/scoreboard/operation/resource_count/get_resource {resource:lifestone}
function nl_system:modules/storage/scoreboard/operation/resource_count/get_resource {resource:redstone}
function nl_system:systems/item/update/lifestone
function nl_system:systems/item/update/redstone