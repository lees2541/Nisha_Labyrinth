$execute align xyz unless block ~ ~ ~ $(block) run return 1
$execute unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] align xyz run summon marker ~0. ~0. ~0. {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Tags:["redstone_gen","marker","spread"],CustomName:'{"text":"SPREAD DUMMY"}',data:{block:$(block)}}
$execute align xyz positioned ~1 ~ ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~ ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~-1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~ ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~ ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}

$execute align xyz positioned ~1 ~1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~-1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~-1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}

$execute align xyz positioned ~1 ~ ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~ ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~ ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~ ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}

$execute align xyz positioned ~ ~1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~-1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~ ~-1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}

$execute align xyz positioned ~1 ~1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~-1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~-1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~-1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~-1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3,tag=marker,tag=spread,tag=redstone_gen] run function nl_lobby:modules/redstone_generator/macro/spread {"block":"$(block)"}
