say 캐릭별리셋

$execute as @a[tag=$(character)] run function nl_char:char_functions/$(team)/$(character)/reset
$execute as @a[tag=$(character)] run function nl_char:jobs/$(team)/$(character)/reset_stats
$execute if data storage nl:in_game status{ongoing:2} as @a[tag=$(character)] run function nl_char:jobs/$(team)/$(character)/$(character)
$execute as @a[tag=$(character)] run function nl_system:modules/storage/scoreboard/operation/resource_count/reset_resource {id:$(id)}
