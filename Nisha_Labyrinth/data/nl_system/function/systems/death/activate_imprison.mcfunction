data modify storage nl:buffer point.X set from entity @s LastDeathLocation.pos[0]
data modify storage nl:buffer point.Y set from entity @s LastDeathLocation.pos[1]
data modify storage nl:buffer point.Z set from entity @s LastDeathLocation.pos[2]

function nl_system:systems/death/imprison_vfx with storage nl:buffer point


function nl_vfx:map/cave/trigger/imprison