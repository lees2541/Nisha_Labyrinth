$execute align xyz unless block ~ ~ ~ $(block) run return 1
$execute unless entity @e[type=marker,distance=..0.3] align xyz run summon marker ~0. ~0. ~0. {CustomNameVisible:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Tags:["test"],CustomName:'{"text":"테스트"}',data:{block:$(block)}}
$execute align xyz positioned ~1 ~ ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~ ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~-1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~ ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~ ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}

$execute align xyz positioned ~1 ~1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~-1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~-1 ~ if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}

$execute align xyz positioned ~1 ~ ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~ ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~ ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~ ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}

$execute align xyz positioned ~ ~1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~-1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~ ~-1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}

$execute align xyz positioned ~1 ~1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~-1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~-1 ~1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~1 ~-1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
$execute align xyz positioned ~-1 ~-1 ~-1 if block ~ ~ ~ $(block) unless entity @e[type=marker,distance=..0.3] run function nl_test:spread {"block":"$(block)"}
