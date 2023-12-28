$function nl_char:char_functions/$(team)/$(character)/reset
$execute as @a[tag=$(character)] run function nl_char:jobs/$(team)/$(character)/reset_stats
$execute if data storage nl:in_game status{ongoing:2} run function nl_char:jobs/$(team)/$(character)/$(character)
