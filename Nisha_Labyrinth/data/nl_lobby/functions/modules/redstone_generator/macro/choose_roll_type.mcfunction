$data modify storage nl:buffer settings.rolls set from storage nl:settings redstone.rolls.$(tag)
$data merge storage nl:buffer {settings:{"tag":"$(tag)"}}
function nl_lobby:modules/redstone_generator/roll/place_markers with storage nl:buffer settings