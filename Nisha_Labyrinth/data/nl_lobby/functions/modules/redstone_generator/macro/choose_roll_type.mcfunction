$execute store result storage nl:buffer settings.rolls run data get storage nl:lobby redstone.rolls.$(color)
$data merge storage nl:buffer {settings:{"color":"$(color)"}}
#function nl_lobby:modules/redstone_generator/roll/place_redstone with storage nl:buffer settings