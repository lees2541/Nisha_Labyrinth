$data modify storage nl:buffer settings.rolls set from storage nl:settings manastone.rolls.$(tag)
execute unless data storage nl:settings manastone.rolls{area:0} run data modify storage nl:buffer settings.rolls set value 1
$data merge storage nl:buffer {settings:{"tag":"$(tag)"}}
function nl_system:modules/manastone_generator/roll/place_markers with storage nl:buffer settings

