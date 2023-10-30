
$execute if data storage nl:settings player[{id:$(id)}] run data modify storage nl:settings player[{id:$(id)}].character set from storage nl:buffer settings.player.character
$execute if data storage nl:lobby settings.player[{id:$(id)}] run data modify storage nl:lobby settings.player[{id:$(id)}].character set from storage nl:buffer settings.player.character
$execute if data storage nl:in_game player[{id:$(id)}] run data modify storage nl:in_game player[{id:$(id)}].character set from storage nl:buffer settings.player.character

$execute if data storage nl:settings player[{id:$(id)}] run data modify storage nl:settings player[{id:$(id)}].team set from storage nl:buffer settings.player.team
$execute if data storage nl:lobby settings.player[{id:$(id)}] run data modify storage nl:lobby settings.player[{id:$(id)}].team set from storage nl:buffer settings.player.team
$execute if data storage nl:in_game player[{id:$(id)}] run data modify storage nl:in_game player[{id:$(id)}].team set from storage nl:buffer settings.player.team