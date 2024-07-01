$data modify storage nl:buffer settings.rolls set from storage nl:settings redstone.rolls.$(tag)
execute unless data storage nl:settings redstone.rolls{area:0} run data modify storage nl:buffer settings.rolls set value 1
$data merge storage nl:buffer {settings:{"tag":"$(tag)"}}
function nl_lobby:modules/redstone_generator/roll/place_markers with storage nl:buffer settings

