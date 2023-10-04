
$execute if data storage nl:settings player[{id:$(id)}] run data modify storage nl:settings player[{id:$(id)}].character set from storage nl:buffer settings.player.character
$execute if data storage nl:lobby settings.player[{id:$(id)}] run data modify storage nl:lobby settings.player[{id:$(id)}].character set from storage nl:buffer settings.player.character